function sectors = sectors_daily(stocknames)
% classifes stocks from vector 'stocknames' into the 3 sectors: Financials,
% Resources and Industrials. 1 for financials, 2 for resources and 3 for
% industrials.

for j = 1:3
    for i = 1:length(stocknames)
       if j==1 && string(stocknames{i})=='DSYJ.J' | string(stocknames{i})=='FSRJ.J' | string(stocknames{i})=='INLJ.J'...
               | string(stocknames{i})=='INPJ.J' | string(stocknames{i})=='RMHJ.J' | string(stocknames{i})=='OMLJ.J'...
               | string(stocknames{i})=='SLMJ.J' | string(stocknames{i})=='NEDJ.J' | string(stocknames{i})=='SBKJ.J'... 
           combs{j}(i) = 1;
       elseif j==2 && string(stocknames{i})=='AGLJ.J' | string(stocknames{i})=='AMSJ.J' | string(stocknames{i})=='ARIJ.J'...
               | string(stocknames{i})=='ANGJ.J' | string(stocknames{i})=='BILJ.J' | string(stocknames{i})=='GFIJ.J'...
               | string(stocknames{i})=='IMPJ.J' | string(stocknames{i})=='KIOJ.J' | string(stocknames{i})=='MNDJ.J'...
               | string(stocknames{i})=='MNPJ.J' | string(stocknames{i})=='SOLJ.J'
           combs{j}(i) = 1;
       elseif j==3 && string(stocknames{i})=='APNJ.J' | string(stocknames{i})=='BVTJ.J' | string(stocknames{i})=='BTIJ.J'...
               | string(stocknames{i})=='CFRJ.J' | string(stocknames{i})=='EXXJ.J' | string(stocknames{i})=='GRTJ.J'...
               | string(stocknames{i})=='IPLJ.J' | string(stocknames{i})=='MSMJ.J' | string(stocknames{i})=='MDCJ.J'...
               | string(stocknames{i})=='MTNJ.J' | string(stocknames{i})=='REMJ.J' | string(stocknames{i})=='SABJ.J'...
               | string(stocknames{i})=='SHPJ.J' | string(stocknames{i})=='SHFJ.J' | string(stocknames{i})=='TBSJ.J'...
               | string(stocknames{i})=='TRUJ.J' | string(stocknames{i})=='VODJ.J' | string(stocknames{i})=='WHLJ.J'
           combs{j}(i) = 1;
       else 
           combs{j}(i) = 0;
       end
    end
end

sectors = combs;
end