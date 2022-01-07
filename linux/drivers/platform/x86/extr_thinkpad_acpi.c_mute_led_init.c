
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tp_led_table {scalar_t__ state; int name; } ;
struct ibm_init_struct {int dummy; } ;
typedef int acpi_handle ;
struct TYPE_6__ {int brightness; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ENODEV ;
 int TPACPI_LED_MAX ;
 int acpi_get_handle (int ,int ,int *) ;
 int hkey_handle ;
 int led_classdev_register (int *,TYPE_2__*) ;
 int led_classdev_unregister (TYPE_2__*) ;
 struct tp_led_table* led_tables ;
 int ledtrig_audio_get (int) ;
 TYPE_2__* mute_led_cdev ;
 TYPE_1__* tpacpi_pdev ;

__attribute__((used)) static int mute_led_init(struct ibm_init_struct *iibm)
{
 acpi_handle temp;
 int i, err;

 for (i = 0; i < TPACPI_LED_MAX; i++) {
  struct tp_led_table *t = &led_tables[i];
  if (ACPI_FAILURE(acpi_get_handle(hkey_handle, t->name, &temp))) {
   t->state = -ENODEV;
   continue;
  }

  mute_led_cdev[i].brightness = ledtrig_audio_get(i);
  err = led_classdev_register(&tpacpi_pdev->dev, &mute_led_cdev[i]);
  if (err < 0) {
   while (i--) {
    if (led_tables[i].state >= 0)
     led_classdev_unregister(&mute_led_cdev[i]);
   }
   return err;
  }
 }
 return 0;
}
