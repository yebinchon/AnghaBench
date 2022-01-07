
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {scalar_t__ prop_name; int opp_list; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct opp_table* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 struct opp_table* dev_pm_opp_get_opp_table (struct device*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 scalar_t__ kstrdup (char const*,int ) ;
 int list_empty (int *) ;

struct opp_table *dev_pm_opp_set_prop_name(struct device *dev, const char *name)
{
 struct opp_table *opp_table;

 opp_table = dev_pm_opp_get_opp_table(dev);
 if (!opp_table)
  return ERR_PTR(-ENOMEM);


 WARN_ON(!list_empty(&opp_table->opp_list));


 if (opp_table->prop_name)
  return opp_table;

 opp_table->prop_name = kstrdup(name, GFP_KERNEL);
 if (!opp_table->prop_name) {
  dev_pm_opp_put_opp_table(opp_table);
  return ERR_PTR(-ENOMEM);
 }

 return opp_table;
}
