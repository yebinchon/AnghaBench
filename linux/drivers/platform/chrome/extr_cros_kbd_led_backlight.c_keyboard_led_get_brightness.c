
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dev; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_KEYBOARD_BACKLIGHT_READ ;
 int EIO ;
 int acpi_evaluate_integer (int *,int ,int *,unsigned long long*) ;
 int dev_err (int ,char*,int ) ;

__attribute__((used)) static enum led_brightness
keyboard_led_get_brightness(struct led_classdev *cdev)
{
 unsigned long long brightness;
 acpi_status status;

 status = acpi_evaluate_integer(((void*)0), ACPI_KEYBOARD_BACKLIGHT_READ,
           ((void*)0), &brightness);
 if (ACPI_FAILURE(status)) {
  dev_err(cdev->dev, "Error getting keyboard LED value: %d\n",
   status);
  return -EIO;
 }

 return brightness;
}
