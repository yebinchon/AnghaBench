
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int (* set_opp ) (struct dev_pm_set_opp_data*) ;int opp_list; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 struct opp_table* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct opp_table* dev_pm_opp_get_opp_table (struct device*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 int list_empty (int *) ;

struct opp_table *dev_pm_opp_register_set_opp_helper(struct device *dev,
   int (*set_opp)(struct dev_pm_set_opp_data *data))
{
 struct opp_table *opp_table;

 if (!set_opp)
  return ERR_PTR(-EINVAL);

 opp_table = dev_pm_opp_get_opp_table(dev);
 if (!opp_table)
  return ERR_PTR(-ENOMEM);


 if (WARN_ON(!list_empty(&opp_table->opp_list))) {
  dev_pm_opp_put_opp_table(opp_table);
  return ERR_PTR(-EBUSY);
 }


 if (!opp_table->set_opp)
  opp_table->set_opp = set_opp;

 return opp_table;
}
