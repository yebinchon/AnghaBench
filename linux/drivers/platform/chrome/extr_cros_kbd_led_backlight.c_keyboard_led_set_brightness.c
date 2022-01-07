
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct led_classdev {int dev; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_KEYBOARD_BACKLIGHT_WRITE ;
 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_object (int *,int ,struct acpi_object_list*,int *) ;
 int dev_err (int ,char*,int ) ;

__attribute__((used)) static void keyboard_led_set_brightness(struct led_classdev *cdev,
     enum led_brightness brightness)
{
 union acpi_object param;
 struct acpi_object_list input;
 acpi_status status;

 param.type = ACPI_TYPE_INTEGER;
 param.integer.value = brightness;
 input.count = 1;
 input.pointer = &param;

 status = acpi_evaluate_object(((void*)0), ACPI_KEYBOARD_BACKLIGHT_WRITE,
          &input, ((void*)0));
 if (ACPI_FAILURE(status))
  dev_err(cdev->dev, "Error setting keyboard LED value: %d\n",
   status);
}
