
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct opp_table {unsigned int supported_hw_count; scalar_t__ supported_hw; int opp_list; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct opp_table* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 struct opp_table* dev_pm_opp_get_opp_table (struct device*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 scalar_t__ kmemdup (int const*,unsigned int,int ) ;
 int list_empty (int *) ;

struct opp_table *dev_pm_opp_set_supported_hw(struct device *dev,
   const u32 *versions, unsigned int count)
{
 struct opp_table *opp_table;

 opp_table = dev_pm_opp_get_opp_table(dev);
 if (!opp_table)
  return ERR_PTR(-ENOMEM);


 WARN_ON(!list_empty(&opp_table->opp_list));


 if (opp_table->supported_hw)
  return opp_table;

 opp_table->supported_hw = kmemdup(versions, count * sizeof(*versions),
     GFP_KERNEL);
 if (!opp_table->supported_hw) {
  dev_pm_opp_put_opp_table(opp_table);
  return ERR_PTR(-ENOMEM);
 }

 opp_table->supported_hw_count = count;

 return opp_table;
}
