
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc2731_charger_info {int usb_notify; int usb_phy; } ;
struct platform_device {int dummy; } ;


 struct sc2731_charger_info* platform_get_drvdata (struct platform_device*) ;
 int usb_unregister_notifier (int ,int *) ;

__attribute__((used)) static int sc2731_charger_remove(struct platform_device *pdev)
{
 struct sc2731_charger_info *info = platform_get_drvdata(pdev);

 usb_unregister_notifier(info->usb_phy, &info->usb_notify);

 return 0;
}
