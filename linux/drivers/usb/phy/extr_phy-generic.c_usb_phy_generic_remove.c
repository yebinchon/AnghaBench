
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_generic {int phy; } ;
struct platform_device {int dummy; } ;


 struct usb_phy_generic* platform_get_drvdata (struct platform_device*) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int usb_phy_generic_remove(struct platform_device *pdev)
{
 struct usb_phy_generic *nop = platform_get_drvdata(pdev);

 usb_remove_phy(&nop->phy);

 return 0;
}
