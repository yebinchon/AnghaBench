
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {char* name; int max_brightness; int brightness_get; int brightness_set; } ;
struct asus_led {int work; struct asus_laptop* asus; struct led_classdev led; } ;
struct asus_laptop {scalar_t__ wled_type; scalar_t__ bled_type; TYPE_1__* platform_device; struct asus_led kled; int handle; int gled; int pled; int rled; int tled; int mled; int bled; int wled; int led_workqueue; scalar_t__ is_pega_lucid; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int METHOD_BLUETOOTH ;
 int METHOD_GLED ;
 int METHOD_KBD_LIGHT_GET ;
 int METHOD_KBD_LIGHT_SET ;
 int METHOD_MLED ;
 int METHOD_PLED ;
 int METHOD_RLED ;
 int METHOD_TLED ;
 int METHOD_WLAN ;
 scalar_t__ TYPE_LED ;
 int acpi_check_handle (int ,int ,int *) ;
 int asus_kled_cdev_get ;
 int asus_kled_cdev_set ;
 int asus_kled_cdev_update ;
 int asus_led_exit (struct asus_laptop*) ;
 int asus_led_register (struct asus_laptop*,int *,char*,int ) ;
 int create_singlethread_workqueue (char*) ;
 int led_classdev_register (int *,struct led_classdev*) ;

__attribute__((used)) static int asus_led_init(struct asus_laptop *asus)
{
 int r = 0;





 if (asus->is_pega_lucid)
  return 0;







 asus->led_workqueue = create_singlethread_workqueue("led_workqueue");
 if (!asus->led_workqueue)
  return -ENOMEM;

 if (asus->wled_type == TYPE_LED)
  r = asus_led_register(asus, &asus->wled, "asus::wlan",
          METHOD_WLAN);
 if (r)
  goto error;
 if (asus->bled_type == TYPE_LED)
  r = asus_led_register(asus, &asus->bled, "asus::bluetooth",
          METHOD_BLUETOOTH);
 if (r)
  goto error;
 r = asus_led_register(asus, &asus->mled, "asus::mail", METHOD_MLED);
 if (r)
  goto error;
 r = asus_led_register(asus, &asus->tled, "asus::touchpad", METHOD_TLED);
 if (r)
  goto error;
 r = asus_led_register(asus, &asus->rled, "asus::record", METHOD_RLED);
 if (r)
  goto error;
 r = asus_led_register(asus, &asus->pled, "asus::phone", METHOD_PLED);
 if (r)
  goto error;
 r = asus_led_register(asus, &asus->gled, "asus::gaming", METHOD_GLED);
 if (r)
  goto error;
 if (!acpi_check_handle(asus->handle, METHOD_KBD_LIGHT_SET, ((void*)0)) &&
     !acpi_check_handle(asus->handle, METHOD_KBD_LIGHT_GET, ((void*)0))) {
  struct asus_led *led = &asus->kled;
  struct led_classdev *cdev = &led->led;

  led->asus = asus;

  INIT_WORK(&led->work, asus_kled_cdev_update);
  cdev->name = "asus::kbd_backlight";
  cdev->brightness_set = asus_kled_cdev_set;
  cdev->brightness_get = asus_kled_cdev_get;
  cdev->max_brightness = 3;
  r = led_classdev_register(&asus->platform_device->dev, cdev);
 }
error:
 if (r)
  asus_led_exit(asus);
 return r;
}
