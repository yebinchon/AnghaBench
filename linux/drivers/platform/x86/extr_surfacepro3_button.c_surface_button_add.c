
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct surface_button {int phys; struct input_dev* input; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {char* name; TYPE_2__ dev; TYPE_1__ id; int phys; } ;
struct acpi_device {int dev; struct surface_button* driver_data; } ;


 int BUS_HOST ;
 int ENODEV ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int KEY_LEFTMETA ;
 int KEY_POWER ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int SURFACE_BUTTON_DEVICE_NAME ;
 int SURFACE_BUTTON_OBJ_NAME ;
 int acpi_device_bid (struct acpi_device*) ;
 char* acpi_device_hid (struct acpi_device*) ;
 char* acpi_device_name (struct acpi_device*) ;
 int dev_info (int *,char*,char*,int ) ;
 int device_init_wakeup (int *,int) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int kfree (struct surface_button*) ;
 struct surface_button* kzalloc (int,int ) ;
 int snprintf (int ,int,char*,char const*) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;
 int surface_button_check_MSHW0040 (struct acpi_device*) ;

__attribute__((used)) static int surface_button_add(struct acpi_device *device)
{
 struct surface_button *button;
 struct input_dev *input;
 const char *hid = acpi_device_hid(device);
 char *name;
 int error;

 if (strncmp(acpi_device_bid(device), SURFACE_BUTTON_OBJ_NAME,
     strlen(SURFACE_BUTTON_OBJ_NAME)))
  return -ENODEV;

 if (!surface_button_check_MSHW0040(device))
  return -ENODEV;

 button = kzalloc(sizeof(struct surface_button), GFP_KERNEL);
 if (!button)
  return -ENOMEM;

 device->driver_data = button;
 button->input = input = input_allocate_device();
 if (!input) {
  error = -ENOMEM;
  goto err_free_button;
 }

 name = acpi_device_name(device);
 strcpy(name, SURFACE_BUTTON_DEVICE_NAME);
 snprintf(button->phys, sizeof(button->phys), "%s/buttons", hid);

 input->name = name;
 input->phys = button->phys;
 input->id.bustype = BUS_HOST;
 input->dev.parent = &device->dev;
 input_set_capability(input, EV_KEY, KEY_POWER);
 input_set_capability(input, EV_KEY, KEY_LEFTMETA);
 input_set_capability(input, EV_KEY, KEY_VOLUMEUP);
 input_set_capability(input, EV_KEY, KEY_VOLUMEDOWN);

 error = input_register_device(input);
 if (error)
  goto err_free_input;

 device_init_wakeup(&device->dev, 1);
 dev_info(&device->dev,
   "%s [%s]\n", name, acpi_device_bid(device));
 return 0;

 err_free_input:
 input_free_device(input);
 err_free_button:
 kfree(button);
 return error;
}
