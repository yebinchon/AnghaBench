
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int regulator_count; int * regulators; int opp_list; } ;


 int WARN_ON (int) ;
 int _free_set_opp_data (struct opp_table*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 int kfree (int *) ;
 int list_empty (int *) ;
 int regulator_put (int ) ;

void dev_pm_opp_put_regulators(struct opp_table *opp_table)
{
 int i;

 if (!opp_table->regulators)
  goto put_opp_table;


 WARN_ON(!list_empty(&opp_table->opp_list));

 for (i = opp_table->regulator_count - 1; i >= 0; i--)
  regulator_put(opp_table->regulators[i]);

 _free_set_opp_data(opp_table);

 kfree(opp_table->regulators);
 opp_table->regulators = ((void*)0);
 opp_table->regulator_count = -1;

put_opp_table:
 dev_pm_opp_put_opp_table(opp_table);
}
