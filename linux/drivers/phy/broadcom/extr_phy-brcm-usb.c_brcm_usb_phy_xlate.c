
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dummy; } ;
struct of_phandle_args {int* args; } ;
struct device {int dummy; } ;
struct brcm_usb_phy_data {TYPE_1__* phys; } ;
struct TYPE_2__ {struct phy* phy; } ;


 size_t BRCM_USB_PHY_2_0 ;
 size_t BRCM_USB_PHY_3_0 ;
 int ENODEV ;
 struct phy* ERR_PTR (int ) ;


 struct brcm_usb_phy_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;

__attribute__((used)) static struct phy *brcm_usb_phy_xlate(struct device *dev,
          struct of_phandle_args *args)
{
 struct brcm_usb_phy_data *data = dev_get_drvdata(dev);





 switch (args->args[0]) {
 case 0:
 case 129:
  if (data->phys[BRCM_USB_PHY_2_0].phy)
   return data->phys[BRCM_USB_PHY_2_0].phy;
  dev_warn(dev, "Error, 2.0 Phy not found\n");
  break;
 case 1:
 case 128:
  if (data->phys[BRCM_USB_PHY_3_0].phy)
   return data->phys[BRCM_USB_PHY_3_0].phy;
  dev_warn(dev, "Error, 3.0 Phy not found\n");
  break;
 }
 return ERR_PTR(-ENODEV);
}
