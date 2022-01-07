
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_provider {int owner; int dev; struct phy* (* of_xlate ) (int ,struct of_phandle_args*) ;} ;
struct phy {int dummy; } ;
struct of_phandle_args {int np; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int dev_warn (int ,char*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_device_is_available (int ) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_args (struct device_node*,char*,char*,int,struct of_phandle_args*) ;
 struct phy_provider* of_phy_provider_lookup (int ) ;
 int phy_provider_mutex ;
 struct phy* stub1 (int ,struct of_phandle_args*) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct phy *_of_phy_get(struct device_node *np, int index)
{
 int ret;
 struct phy_provider *phy_provider;
 struct phy *phy = ((void*)0);
 struct of_phandle_args args;

 ret = of_parse_phandle_with_args(np, "phys", "#phy-cells",
  index, &args);
 if (ret)
  return ERR_PTR(-ENODEV);


 if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
  return ERR_PTR(-ENODEV);

 mutex_lock(&phy_provider_mutex);
 phy_provider = of_phy_provider_lookup(args.np);
 if (IS_ERR(phy_provider) || !try_module_get(phy_provider->owner)) {
  phy = ERR_PTR(-EPROBE_DEFER);
  goto out_unlock;
 }

 if (!of_device_is_available(args.np)) {
  dev_warn(phy_provider->dev, "Requested PHY is disabled\n");
  phy = ERR_PTR(-ENODEV);
  goto out_put_module;
 }

 phy = phy_provider->of_xlate(phy_provider->dev, &args);

out_put_module:
 module_put(phy_provider->owner);

out_unlock:
 mutex_unlock(&phy_provider_mutex);
 of_node_put(args.np);

 return phy;
}
