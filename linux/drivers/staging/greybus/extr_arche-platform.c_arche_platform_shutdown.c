
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct arche_platform_drvdata {int dummy; } ;


 int arche_platform_poweroff_seq (struct arche_platform_drvdata*) ;
 struct arche_platform_drvdata* platform_get_drvdata (struct platform_device*) ;
 int usb3613_hub_mode_ctrl (int) ;

__attribute__((used)) static void arche_platform_shutdown(struct platform_device *pdev)
{
 struct arche_platform_drvdata *arche_pdata = platform_get_drvdata(pdev);

 arche_platform_poweroff_seq(arche_pdata);

 usb3613_hub_mode_ctrl(0);
}
