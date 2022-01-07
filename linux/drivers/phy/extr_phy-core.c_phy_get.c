
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dev; TYPE_1__* ops; } ;
struct device {scalar_t__ of_node; } ;
struct TYPE_2__ {int owner; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct phy*) ;
 struct phy* _of_phy_get (scalar_t__,int) ;
 int dev_WARN (struct device*,char*) ;
 int get_device (int *) ;
 int of_property_match_string (scalar_t__,char*,char const*) ;
 struct phy* phy_find (struct device*,char const*) ;
 int try_module_get (int ) ;

struct phy *phy_get(struct device *dev, const char *string)
{
 int index = 0;
 struct phy *phy;

 if (string == ((void*)0)) {
  dev_WARN(dev, "missing string\n");
  return ERR_PTR(-EINVAL);
 }

 if (dev->of_node) {
  index = of_property_match_string(dev->of_node, "phy-names",
   string);
  phy = _of_phy_get(dev->of_node, index);
 } else {
  phy = phy_find(dev, string);
 }
 if (IS_ERR(phy))
  return phy;

 if (!try_module_get(phy->ops->owner))
  return ERR_PTR(-EPROBE_DEFER);

 get_device(&phy->dev);

 return phy;
}
