
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct of_phandle_args {scalar_t__* args; } ;
struct device {int dummy; } ;
struct armada375_cluster_phy {scalar_t__ phy_provided; int use_usb3; struct phy* phy; } ;


 int EBUSY ;
 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ PHY_NONE ;
 scalar_t__ PHY_TYPE_USB2 ;
 scalar_t__ PHY_TYPE_USB3 ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*) ;
 struct armada375_cluster_phy* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *armada375_usb_phy_xlate(struct device *dev,
     struct of_phandle_args *args)
{
 struct armada375_cluster_phy *cluster_phy = dev_get_drvdata(dev);

 if (!cluster_phy)
  return ERR_PTR(-ENODEV);







 if (WARN_ON((cluster_phy->phy_provided != PHY_NONE) &&
   (cluster_phy->phy_provided != args->args[0]))) {
  dev_err(dev, "This PHY has already been provided!\n");
  dev_err(dev, "Check your device tree, only one controller can use it\n.");
  if (args->args[0] == PHY_TYPE_USB2)
   return ERR_PTR(-EBUSY);
  else
   return ERR_PTR(-ENODEV);
 }

 if (args->args[0] == PHY_TYPE_USB2)
  cluster_phy->use_usb3 = 0;
 else if (args->args[0] == PHY_TYPE_USB3)
  cluster_phy->use_usb3 = 1;
 else {
  dev_err(dev, "Invalid PHY mode\n");
  return ERR_PTR(-ENODEV);
 }


 cluster_phy->phy_provided = args->args[0];

 return cluster_phy->phy;
}
