
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int dev_list; } ;
struct opp_device {int node; struct device const* dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct opp_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int opp_debug_register (struct opp_device*,struct opp_table*) ;

__attribute__((used)) static struct opp_device *_add_opp_dev_unlocked(const struct device *dev,
      struct opp_table *opp_table)
{
 struct opp_device *opp_dev;

 opp_dev = kzalloc(sizeof(*opp_dev), GFP_KERNEL);
 if (!opp_dev)
  return ((void*)0);


 opp_dev->dev = dev;

 list_add(&opp_dev->node, &opp_table->dev_list);


 opp_debug_register(opp_dev, opp_table);

 return opp_dev;
}
