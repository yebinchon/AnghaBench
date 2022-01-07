
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int dummy; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 int _of_add_opp_table_v2 (struct device*,struct opp_table*) ;
 struct opp_table* dev_pm_opp_get_opp_table_indexed (struct device*,int) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 int of_count_phandle_with_args (int ,char*,int *) ;

int dev_pm_opp_of_add_table_indexed(struct device *dev, int index)
{
 struct opp_table *opp_table;
 int ret, count;

 if (index) {




  count = of_count_phandle_with_args(dev->of_node,
         "operating-points-v2", ((void*)0));
  if (count == 1)
   index = 0;
 }

 opp_table = dev_pm_opp_get_opp_table_indexed(dev, index);
 if (!opp_table)
  return -ENOMEM;

 ret = _of_add_opp_table_v2(dev, opp_table);
 if (ret)
  dev_pm_opp_put_opp_table(opp_table);

 return ret;
}
