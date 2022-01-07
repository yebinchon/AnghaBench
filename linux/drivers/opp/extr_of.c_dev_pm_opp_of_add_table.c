
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {scalar_t__ np; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int _of_add_opp_table_v1 (struct device*,struct opp_table*) ;
 int _of_add_opp_table_v2 (struct device*,struct opp_table*) ;
 struct opp_table* dev_pm_opp_get_opp_table_indexed (struct device*,int ) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;

int dev_pm_opp_of_add_table(struct device *dev)
{
 struct opp_table *opp_table;
 int ret;

 opp_table = dev_pm_opp_get_opp_table_indexed(dev, 0);
 if (!opp_table)
  return -ENOMEM;





 if (opp_table->np)
  ret = _of_add_opp_table_v2(dev, opp_table);
 else
  ret = _of_add_opp_table_v1(dev, opp_table);

 if (ret)
  dev_pm_opp_put_opp_table(opp_table);

 return ret;
}
