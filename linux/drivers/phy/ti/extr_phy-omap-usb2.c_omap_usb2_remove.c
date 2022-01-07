
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_usb {int dev; int phy; } ;


 struct omap_usb* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int omap_usb2_remove(struct platform_device *pdev)
{
 struct omap_usb *phy = platform_get_drvdata(pdev);

 usb_remove_phy(&phy->phy);
 pm_runtime_disable(phy->dev);

 return 0;
}
