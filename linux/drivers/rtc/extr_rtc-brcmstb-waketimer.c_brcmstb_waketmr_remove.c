
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct brcmstb_waketmr {int reboot_notifier; } ;


 struct brcmstb_waketmr* dev_get_drvdata (int *) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static int brcmstb_waketmr_remove(struct platform_device *pdev)
{
 struct brcmstb_waketmr *timer = dev_get_drvdata(&pdev->dev);

 unregister_reboot_notifier(&timer->reboot_notifier);

 return 0;
}
