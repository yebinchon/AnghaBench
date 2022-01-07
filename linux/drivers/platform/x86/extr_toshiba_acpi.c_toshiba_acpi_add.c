
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {char* name; int max_brightness; int brightness_get; int brightness_set; int flags; } ;
struct TYPE_10__ {char* name; int * fops; int minor; } ;
struct toshiba_acpi_dev {char const* method_hci; int kbd_function_keys_supported; int tr_backlight_supported; int illumination_led_registered; int eco_led_registered; scalar_t__ kbd_mode; int kbd_type; int kbd_led_registered; int touchpad_supported; int usb_rapid_charge_supported; int usb_sleep_music_supported; int panel_power_on_supported; int usb_three_supported; int video_supported; int fan_supported; int sysfs_created; struct acpi_device* acpi_dev; scalar_t__ wwan_supported; TYPE_5__* indio_dev; scalar_t__ accelerometer_supported; TYPE_4__ kbd_led; scalar_t__ kbd_illum_supported; TYPE_4__ eco_led; scalar_t__ eco_supported; TYPE_4__ led_dev; scalar_t__ illumination_supported; scalar_t__ hotkey_event_type; int special_functions; TYPE_2__ miscdev; } ;
struct TYPE_11__ {int kobj; } ;
struct acpi_device {TYPE_3__ dev; struct toshiba_acpi_dev* driver_data; int handle; } ;
struct TYPE_9__ {TYPE_3__* parent; } ;
struct TYPE_13__ {char* name; int num_channels; int channels; int modes; TYPE_1__ dev; int * info; } ;


 int ARRAY_SIZE (int ) ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INDIO_DIRECT_MODE ;
 int LED_BRIGHT_HW_CHANGED ;
 int MISC_DYNAMIC_MINOR ;
 scalar_t__ SCI_KBD_MODE_FNZ ;
 int TOSHIBA_ACPI_VERSION ;
 int create_toshiba_proc_entries (struct toshiba_acpi_dev*) ;
 int dev_set_drvdata (TYPE_3__*,struct toshiba_acpi_dev*) ;
 char* find_hci_method (int ) ;
 int get_fan_status (struct toshiba_acpi_dev*,int *) ;
 int get_tr_backlight_status (struct toshiba_acpi_dev*,int *) ;
 int get_video_status (struct toshiba_acpi_dev*,int *) ;
 TYPE_5__* iio_device_alloc (int) ;
 int iio_device_free (TYPE_5__*) ;
 int iio_device_register (TYPE_5__*) ;
 int kfree (struct toshiba_acpi_dev*) ;
 struct toshiba_acpi_dev* kzalloc (int,int ) ;
 int led_classdev_register (TYPE_3__*,TYPE_4__*) ;
 int misc_register (TYPE_2__*) ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 int print_supported_features (struct toshiba_acpi_dev*) ;
 int sysfs_create_group (int *,int *) ;
 int toshiba_accelerometer_available (struct toshiba_acpi_dev*) ;
 struct toshiba_acpi_dev* toshiba_acpi ;
 int toshiba_acpi_fops ;
 int toshiba_acpi_remove (struct acpi_device*) ;
 int toshiba_acpi_setup_backlight (struct toshiba_acpi_dev*) ;
 scalar_t__ toshiba_acpi_setup_keyboard (struct toshiba_acpi_dev*) ;
 int toshiba_acpi_setup_wwan_rfkill (struct toshiba_acpi_dev*) ;
 int toshiba_attr_group ;
 int toshiba_cooling_method_available (struct toshiba_acpi_dev*) ;
 int toshiba_eco_mode_available (struct toshiba_acpi_dev*) ;
 int toshiba_eco_mode_get_status ;
 int toshiba_eco_mode_set_status ;
 int toshiba_function_keys_get (struct toshiba_acpi_dev*,int *) ;
 int toshiba_iio_accel_channels ;
 int toshiba_iio_accel_info ;
 int toshiba_illumination_available (struct toshiba_acpi_dev*) ;
 int toshiba_illumination_get ;
 int toshiba_illumination_set ;
 int toshiba_kbd_backlight_get ;
 int toshiba_kbd_backlight_set ;
 int toshiba_kbd_illum_available (struct toshiba_acpi_dev*) ;
 int toshiba_panel_power_on_get (struct toshiba_acpi_dev*,int *) ;
 int toshiba_touchpad_get (struct toshiba_acpi_dev*,int *) ;
 int toshiba_usb_rapid_charge_get (struct toshiba_acpi_dev*,int *) ;
 int toshiba_usb_sleep_charge_available (struct toshiba_acpi_dev*) ;
 int toshiba_usb_sleep_music_get (struct toshiba_acpi_dev*,int *) ;
 int toshiba_usb_three_get (struct toshiba_acpi_dev*,int *) ;
 int toshiba_wwan_available (struct toshiba_acpi_dev*) ;

__attribute__((used)) static int toshiba_acpi_add(struct acpi_device *acpi_dev)
{
 struct toshiba_acpi_dev *dev;
 const char *hci_method;
 u32 dummy;
 int ret = 0;

 if (toshiba_acpi)
  return -EBUSY;

 pr_info("Toshiba Laptop ACPI Extras version %s\n",
        TOSHIBA_ACPI_VERSION);

 hci_method = find_hci_method(acpi_dev->handle);
 if (!hci_method) {
  pr_err("HCI interface not found\n");
  return -ENODEV;
 }

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;
 dev->acpi_dev = acpi_dev;
 dev->method_hci = hci_method;
 dev->miscdev.minor = MISC_DYNAMIC_MINOR;
 dev->miscdev.name = "toshiba_acpi";
 dev->miscdev.fops = &toshiba_acpi_fops;

 ret = misc_register(&dev->miscdev);
 if (ret) {
  pr_err("Failed to register miscdevice\n");
  kfree(dev);
  return ret;
 }

 acpi_dev->driver_data = dev;
 dev_set_drvdata(&acpi_dev->dev, dev);
 ret = toshiba_function_keys_get(dev, &dev->special_functions);
 dev->kbd_function_keys_supported = !ret;

 dev->hotkey_event_type = 0;
 if (toshiba_acpi_setup_keyboard(dev))
  pr_info("Unable to activate hotkeys\n");


 ret = get_tr_backlight_status(dev, &dummy);
 dev->tr_backlight_supported = !ret;

 ret = toshiba_acpi_setup_backlight(dev);
 if (ret)
  goto error;

 toshiba_illumination_available(dev);
 if (dev->illumination_supported) {
  dev->led_dev.name = "toshiba::illumination";
  dev->led_dev.max_brightness = 1;
  dev->led_dev.brightness_set = toshiba_illumination_set;
  dev->led_dev.brightness_get = toshiba_illumination_get;
  if (!led_classdev_register(&acpi_dev->dev, &dev->led_dev))
   dev->illumination_led_registered = 1;
 }

 toshiba_eco_mode_available(dev);
 if (dev->eco_supported) {
  dev->eco_led.name = "toshiba::eco_mode";
  dev->eco_led.max_brightness = 1;
  dev->eco_led.brightness_set = toshiba_eco_mode_set_status;
  dev->eco_led.brightness_get = toshiba_eco_mode_get_status;
  if (!led_classdev_register(&dev->acpi_dev->dev, &dev->eco_led))
   dev->eco_led_registered = 1;
 }

 toshiba_kbd_illum_available(dev);





 if (dev->kbd_illum_supported &&
     (dev->kbd_mode == SCI_KBD_MODE_FNZ || dev->kbd_type == 2)) {
  dev->kbd_led.name = "toshiba::kbd_backlight";
  dev->kbd_led.flags = LED_BRIGHT_HW_CHANGED;
  dev->kbd_led.max_brightness = 1;
  dev->kbd_led.brightness_set = toshiba_kbd_backlight_set;
  dev->kbd_led.brightness_get = toshiba_kbd_backlight_get;
  if (!led_classdev_register(&dev->acpi_dev->dev, &dev->kbd_led))
   dev->kbd_led_registered = 1;
 }

 ret = toshiba_touchpad_get(dev, &dummy);
 dev->touchpad_supported = !ret;

 toshiba_accelerometer_available(dev);
 if (dev->accelerometer_supported) {
  dev->indio_dev = iio_device_alloc(sizeof(*dev));
  if (!dev->indio_dev) {
   pr_err("Unable to allocate iio device\n");
   goto iio_error;
  }

  pr_info("Registering Toshiba accelerometer iio device\n");

  dev->indio_dev->info = &toshiba_iio_accel_info;
  dev->indio_dev->name = "Toshiba accelerometer";
  dev->indio_dev->dev.parent = &acpi_dev->dev;
  dev->indio_dev->modes = INDIO_DIRECT_MODE;
  dev->indio_dev->channels = toshiba_iio_accel_channels;
  dev->indio_dev->num_channels =
     ARRAY_SIZE(toshiba_iio_accel_channels);

  ret = iio_device_register(dev->indio_dev);
  if (ret < 0) {
   pr_err("Unable to register iio device\n");
   iio_device_free(dev->indio_dev);
  }
 }
iio_error:

 toshiba_usb_sleep_charge_available(dev);

 ret = toshiba_usb_rapid_charge_get(dev, &dummy);
 dev->usb_rapid_charge_supported = !ret;

 ret = toshiba_usb_sleep_music_get(dev, &dummy);
 dev->usb_sleep_music_supported = !ret;

 ret = toshiba_panel_power_on_get(dev, &dummy);
 dev->panel_power_on_supported = !ret;

 ret = toshiba_usb_three_get(dev, &dummy);
 dev->usb_three_supported = !ret;

 ret = get_video_status(dev, &dummy);
 dev->video_supported = !ret;

 ret = get_fan_status(dev, &dummy);
 dev->fan_supported = !ret;

 toshiba_wwan_available(dev);
 if (dev->wwan_supported)
  toshiba_acpi_setup_wwan_rfkill(dev);

 toshiba_cooling_method_available(dev);

 print_supported_features(dev);

 ret = sysfs_create_group(&dev->acpi_dev->dev.kobj,
     &toshiba_attr_group);
 if (ret) {
  dev->sysfs_created = 0;
  goto error;
 }
 dev->sysfs_created = !ret;

 create_toshiba_proc_entries(dev);

 toshiba_acpi = dev;

 return 0;

error:
 toshiba_acpi_remove(acpi_dev);
 return ret;
}
