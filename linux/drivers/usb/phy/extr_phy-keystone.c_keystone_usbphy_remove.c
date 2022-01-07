
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int phy; } ;
struct keystone_usbphy {TYPE_1__ usb_phy_gen; } ;


 struct keystone_usbphy* platform_get_drvdata (struct platform_device*) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int keystone_usbphy_remove(struct platform_device *pdev)
{
 struct keystone_usbphy *k_phy = platform_get_drvdata(pdev);

 usb_remove_phy(&k_phy->usb_phy_gen.phy);

 return 0;
}
