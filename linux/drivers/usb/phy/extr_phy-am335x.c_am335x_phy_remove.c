
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int phy; } ;
struct am335x_phy {TYPE_1__ usb_phy_gen; } ;


 struct am335x_phy* platform_get_drvdata (struct platform_device*) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int am335x_phy_remove(struct platform_device *pdev)
{
 struct am335x_phy *am_phy = platform_get_drvdata(pdev);

 usb_remove_phy(&am_phy->usb_phy_gen.phy);
 return 0;
}
