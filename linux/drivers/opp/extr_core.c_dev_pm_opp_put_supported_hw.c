
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {scalar_t__ supported_hw_count; int * supported_hw; int opp_list; } ;


 int WARN_ON (int) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 int kfree (int *) ;
 int list_empty (int *) ;

void dev_pm_opp_put_supported_hw(struct opp_table *opp_table)
{

 WARN_ON(!list_empty(&opp_table->opp_list));

 kfree(opp_table->supported_hw);
 opp_table->supported_hw = ((void*)0);
 opp_table->supported_hw_count = 0;

 dev_pm_opp_put_opp_table(opp_table);
}
