
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int notify_hotplug_work; } ;
struct platform_device {int dummy; } ;


 int detection_delay ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int usbhs_get_dparam (struct usbhs_priv*,int ) ;
 struct usbhs_priv* usbhs_pdev_to_priv (struct platform_device*) ;

int usbhsc_schedule_notify_hotplug(struct platform_device *pdev)
{
 struct usbhs_priv *priv = usbhs_pdev_to_priv(pdev);
 int delay = usbhs_get_dparam(priv, detection_delay);






 schedule_delayed_work(&priv->notify_hotplug_work,
         msecs_to_jiffies(delay));
 return 0;
}
