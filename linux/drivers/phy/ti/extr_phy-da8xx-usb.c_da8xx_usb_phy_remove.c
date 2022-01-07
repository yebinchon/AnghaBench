
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct da8xx_usb_phy {int usb11_phy; int usb20_phy; } ;


 int phy_remove_lookup (int ,char*,char*) ;
 struct da8xx_usb_phy* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int da8xx_usb_phy_remove(struct platform_device *pdev)
{
 struct da8xx_usb_phy *d_phy = platform_get_drvdata(pdev);

 if (!pdev->dev.of_node) {
  phy_remove_lookup(d_phy->usb20_phy, "usb-phy", "musb-da8xx");
  phy_remove_lookup(d_phy->usb11_phy, "usb-phy", "ohci-da8xx");
 }

 return 0;
}
