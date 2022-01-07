
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_provider {int dummy; } ;
struct device {int dummy; } ;


 int dev_WARN_ONCE (struct device*,int,char*) ;
 int devm_phy_match ;
 int devm_phy_provider_release ;
 int devres_destroy (struct device*,int ,int ,struct phy_provider*) ;

void devm_of_phy_provider_unregister(struct device *dev,
 struct phy_provider *phy_provider) {
 int r;

 r = devres_destroy(dev, devm_phy_provider_release, devm_phy_match,
  phy_provider);
 dev_WARN_ONCE(dev, r, "couldn't find PHY provider device resource\n");
}
