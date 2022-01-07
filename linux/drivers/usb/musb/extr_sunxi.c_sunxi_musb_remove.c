
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_glue {int musb_pdev; struct platform_device* usb_phy; } ;
struct platform_device {int dummy; } ;


 int platform_device_unregister (int ) ;
 struct sunxi_glue* platform_get_drvdata (struct platform_device*) ;
 int usb_phy_generic_unregister (struct platform_device*) ;

__attribute__((used)) static int sunxi_musb_remove(struct platform_device *pdev)
{
 struct sunxi_glue *glue = platform_get_drvdata(pdev);
 struct platform_device *usb_phy = glue->usb_phy;

 platform_device_unregister(glue->musb_pdev);
 usb_phy_generic_unregister(usb_phy);

 return 0;
}
