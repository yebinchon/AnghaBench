
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tusb6010_glue {int phy; int musb; } ;
struct platform_device {int dummy; } ;


 int platform_device_unregister (int ) ;
 struct tusb6010_glue* platform_get_drvdata (struct platform_device*) ;
 int usb_phy_generic_unregister (int ) ;

__attribute__((used)) static int tusb_remove(struct platform_device *pdev)
{
 struct tusb6010_glue *glue = platform_get_drvdata(pdev);

 platform_device_unregister(glue->musb);
 usb_phy_generic_unregister(glue->phy);

 return 0;
}
