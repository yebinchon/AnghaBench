
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int dummy; } ;
struct platform_device {int dummy; } ;


 struct platform_device* usbhs_priv_to_pdev (struct usbhs_priv*) ;
 int usbhsc_schedule_notify_hotplug (struct platform_device*) ;

__attribute__((used)) static int usbhsm_autonomy_irq_vbus(struct usbhs_priv *priv,
        struct usbhs_irq_state *irq_state)
{
 struct platform_device *pdev = usbhs_priv_to_pdev(priv);

 usbhsc_schedule_notify_hotplug(pdev);

 return 0;
}
