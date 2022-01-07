
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int * set_opp; int opp_list; } ;


 int WARN_ON (int) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 int list_empty (int *) ;

void dev_pm_opp_unregister_set_opp_helper(struct opp_table *opp_table)
{

 WARN_ON(!list_empty(&opp_table->opp_list));

 opp_table->set_opp = ((void*)0);
 dev_pm_opp_put_opp_table(opp_table);
}
