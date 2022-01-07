
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da8xx_glue {int usb_phy; int musb; } ;


 int platform_device_unregister (int ) ;
 struct da8xx_glue* platform_get_drvdata (struct platform_device*) ;
 int usb_phy_generic_unregister (int ) ;

__attribute__((used)) static int da8xx_remove(struct platform_device *pdev)
{
 struct da8xx_glue *glue = platform_get_drvdata(pdev);

 platform_device_unregister(glue->musb);
 usb_phy_generic_unregister(glue->usb_phy);

 return 0;
}
