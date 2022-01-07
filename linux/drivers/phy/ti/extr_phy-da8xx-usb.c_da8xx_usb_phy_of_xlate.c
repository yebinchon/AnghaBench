
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct of_phandle_args {int* args; } ;
struct device {int dummy; } ;
struct da8xx_usb_phy {struct phy* usb11_phy; struct phy* usb20_phy; } ;


 int EINVAL ;
 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 struct da8xx_usb_phy* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *da8xx_usb_phy_of_xlate(struct device *dev,
      struct of_phandle_args *args)
{
 struct da8xx_usb_phy *d_phy = dev_get_drvdata(dev);

 if (!d_phy)
  return ERR_PTR(-ENODEV);

 switch (args->args[0]) {
 case 0:
  return d_phy->usb20_phy;
 case 1:
  return d_phy->usb11_phy;
 default:
  return ERR_PTR(-EINVAL);
 }
}
