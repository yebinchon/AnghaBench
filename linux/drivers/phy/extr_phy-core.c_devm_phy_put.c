
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct device {int dummy; } ;


 int dev_WARN_ONCE (struct device*,int,char*) ;
 int devm_phy_match ;
 int devm_phy_release ;
 int devres_destroy (struct device*,int ,int ,struct phy*) ;

void devm_phy_put(struct device *dev, struct phy *phy)
{
 int r;

 if (!phy)
  return;

 r = devres_destroy(dev, devm_phy_release, devm_phy_match, phy);
 dev_WARN_ONCE(dev, r, "couldn't find PHY resource\n");
}
