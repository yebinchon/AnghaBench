
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dev; TYPE_1__* ops; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int owner; } ;


 int EPROBE_DEFER ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct phy*) ;
 struct phy* _of_phy_get (struct device_node*,int) ;
 int get_device (int *) ;
 int of_property_match_string (struct device_node*,char*,char const*) ;
 int try_module_get (int ) ;

struct phy *of_phy_get(struct device_node *np, const char *con_id)
{
 struct phy *phy = ((void*)0);
 int index = 0;

 if (con_id)
  index = of_property_match_string(np, "phy-names", con_id);

 phy = _of_phy_get(np, index);
 if (IS_ERR(phy))
  return phy;

 if (!try_module_get(phy->ops->owner))
  return ERR_PTR(-EPROBE_DEFER);

 get_device(&phy->dev);

 return phy;
}
