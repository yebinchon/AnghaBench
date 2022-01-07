
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int head; } ;
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct opp_table*) ;
 int PTR_ERR (struct opp_table*) ;
 struct opp_table* _find_opp_table (struct device*) ;
 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;

int dev_pm_opp_register_notifier(struct device *dev, struct notifier_block *nb)
{
 struct opp_table *opp_table;
 int ret;

 opp_table = _find_opp_table(dev);
 if (IS_ERR(opp_table))
  return PTR_ERR(opp_table);

 ret = blocking_notifier_chain_register(&opp_table->head, nb);

 dev_pm_opp_put_opp_table(opp_table);

 return ret;
}
