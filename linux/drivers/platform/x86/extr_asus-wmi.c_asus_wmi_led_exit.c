
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct asus_wmi {scalar_t__ led_workqueue; TYPE_1__ lightbar_led; TYPE_1__ wlan_led; TYPE_1__ tpd_led; TYPE_1__ kbd_led; } ;


 int IS_ERR_OR_NULL (int ) ;
 int destroy_workqueue (scalar_t__) ;
 int led_classdev_unregister (TYPE_1__*) ;

__attribute__((used)) static void asus_wmi_led_exit(struct asus_wmi *asus)
{
 if (!IS_ERR_OR_NULL(asus->kbd_led.dev))
  led_classdev_unregister(&asus->kbd_led);
 if (!IS_ERR_OR_NULL(asus->tpd_led.dev))
  led_classdev_unregister(&asus->tpd_led);
 if (!IS_ERR_OR_NULL(asus->wlan_led.dev))
  led_classdev_unregister(&asus->wlan_led);
 if (!IS_ERR_OR_NULL(asus->lightbar_led.dev))
  led_classdev_unregister(&asus->lightbar_led);
 if (asus->led_workqueue)
  destroy_workqueue(asus->led_workqueue);
}
