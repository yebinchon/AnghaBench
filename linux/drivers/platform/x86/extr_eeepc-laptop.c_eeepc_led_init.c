
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; int max_brightness; int brightness_get; int brightness_set; } ;
struct eeepc_laptop {int led_workqueue; TYPE_2__ tpd_led; TYPE_1__* platform_device; int tpd_led_work; } ;
struct TYPE_3__ {int dev; } ;


 int CM_ASL_TPD ;
 int ENODEV ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int get_acpi (struct eeepc_laptop*,int ) ;
 int led_classdev_register (int *,TYPE_2__*) ;
 int tpd_led_get ;
 int tpd_led_set ;
 int tpd_led_update ;

__attribute__((used)) static int eeepc_led_init(struct eeepc_laptop *eeepc)
{
 int rv;

 if (get_acpi(eeepc, CM_ASL_TPD) == -ENODEV)
  return 0;

 eeepc->led_workqueue = create_singlethread_workqueue("led_workqueue");
 if (!eeepc->led_workqueue)
  return -ENOMEM;
 INIT_WORK(&eeepc->tpd_led_work, tpd_led_update);

 eeepc->tpd_led.name = "eeepc::touchpad";
 eeepc->tpd_led.brightness_set = tpd_led_set;
 if (get_acpi(eeepc, CM_ASL_TPD) >= 0)
  eeepc->tpd_led.brightness_get = tpd_led_get;
 eeepc->tpd_led.max_brightness = 1;

 rv = led_classdev_register(&eeepc->platform_device->dev,
       &eeepc->tpd_led);
 if (rv) {
  destroy_workqueue(eeepc->led_workqueue);
  return rv;
 }

 return 0;
}
