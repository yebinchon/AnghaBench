
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int regulator_count; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int _opp_add_v1 (struct opp_table*,struct device*,unsigned long,unsigned long,int) ;
 struct opp_table* dev_pm_opp_get_opp_table (struct device*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;

int dev_pm_opp_add(struct device *dev, unsigned long freq, unsigned long u_volt)
{
 struct opp_table *opp_table;
 int ret;

 opp_table = dev_pm_opp_get_opp_table(dev);
 if (!opp_table)
  return -ENOMEM;


 opp_table->regulator_count = 1;

 ret = _opp_add_v1(opp_table, dev, freq, u_volt, 1);
 if (ret)
  dev_pm_opp_put_opp_table(opp_table);

 return ret;
}
