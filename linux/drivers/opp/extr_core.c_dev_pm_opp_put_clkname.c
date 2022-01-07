
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int clk; int opp_list; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 int WARN_ON (int) ;
 int clk_put (int ) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 int list_empty (int *) ;

void dev_pm_opp_put_clkname(struct opp_table *opp_table)
{

 WARN_ON(!list_empty(&opp_table->opp_list));

 clk_put(opp_table->clk);
 opp_table->clk = ERR_PTR(-EINVAL);

 dev_pm_opp_put_opp_table(opp_table);
}
