
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dev; TYPE_1__* ops; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int owner; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 struct phy* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy*) ;
 struct phy* _of_phy_get (struct device_node*,int) ;
 int devm_phy_release ;
 int devres_add (struct device*,struct phy**) ;
 struct phy** devres_alloc (int ,int,int ) ;
 int devres_free (struct phy**) ;
 int get_device (int *) ;
 int try_module_get (int ) ;

struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
         int index)
{
 struct phy **ptr, *phy;

 ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 phy = _of_phy_get(np, index);
 if (IS_ERR(phy)) {
  devres_free(ptr);
  return phy;
 }

 if (!try_module_get(phy->ops->owner)) {
  devres_free(ptr);
  return ERR_PTR(-EPROBE_DEFER);
 }

 get_device(&phy->dev);

 *ptr = phy;
 devres_add(dev, ptr);

 return phy;
}
