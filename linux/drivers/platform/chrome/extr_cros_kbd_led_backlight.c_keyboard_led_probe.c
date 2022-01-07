
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct led_classdev {char* name; int brightness_get; int brightness_set; int flags; int max_brightness; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_KEYBOARD_BACKLIGHT_DEVICE ;
 int ACPI_KEYBOARD_BACKLIGHT_MAX ;
 int ACPI_ROOT_OBJECT ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 int acpi_get_handle (int ,int ,int *) ;
 int dev_err (int *,char*,int ,int ) ;
 struct led_classdev* devm_kzalloc (int *,int,int ) ;
 int devm_led_classdev_register (int *,struct led_classdev*) ;
 int keyboard_led_get_brightness ;
 int keyboard_led_set_brightness ;

__attribute__((used)) static int keyboard_led_probe(struct platform_device *pdev)
{
 struct led_classdev *cdev;
 acpi_handle handle;
 acpi_status status;
 int error;


 status = acpi_get_handle(ACPI_ROOT_OBJECT,
     ACPI_KEYBOARD_BACKLIGHT_DEVICE,
     &handle);
 if (ACPI_FAILURE(status)) {
  dev_err(&pdev->dev, "Unable to find ACPI device %s: %d\n",
   ACPI_KEYBOARD_BACKLIGHT_DEVICE, status);
  return -ENXIO;
 }

 cdev = devm_kzalloc(&pdev->dev, sizeof(*cdev), GFP_KERNEL);
 if (!cdev)
  return -ENOMEM;

 cdev->name = "chromeos::kbd_backlight";
 cdev->max_brightness = ACPI_KEYBOARD_BACKLIGHT_MAX;
 cdev->flags |= LED_CORE_SUSPENDRESUME;
 cdev->brightness_set = keyboard_led_set_brightness;
 cdev->brightness_get = keyboard_led_get_brightness;

 error = devm_led_classdev_register(&pdev->dev, cdev);
 if (error)
  return error;

 return 0;
}
