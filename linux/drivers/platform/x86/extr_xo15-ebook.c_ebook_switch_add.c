
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * parent; } ;
struct TYPE_5__ {int bustype; } ;
struct input_dev {char* name; int swbit; int * evbit; TYPE_2__ dev; TYPE_1__ id; int phys; } ;
struct ebook_switch {int phys; struct input_dev* input; } ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_8__ {int gpe_number; int gpe_device; TYPE_3__ flags; } ;
struct acpi_device {int dev; TYPE_4__ wakeup; struct ebook_switch* driver_data; } ;


 int BIT_MASK (int ) ;
 int BUS_HOST ;
 int ENODEV ;
 int ENOMEM ;
 int EV_SW ;
 int GFP_KERNEL ;
 int SW_TABLET_MODE ;
 char* XO15_EBOOK_CLASS ;
 int XO15_EBOOK_DEVICE_NAME ;
 int XO15_EBOOK_HID ;
 char* XO15_EBOOK_SUBCLASS ;
 char* acpi_device_class (struct acpi_device*) ;
 char* acpi_device_hid (struct acpi_device*) ;
 char* acpi_device_name (struct acpi_device*) ;
 int acpi_enable_gpe (int ,int ) ;
 int device_set_wakeup_enable (int *,int) ;
 int ebook_send_state (struct acpi_device*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int kfree (struct ebook_switch*) ;
 struct ebook_switch* kzalloc (int,int ) ;
 int pr_err (char*,char const*) ;
 int set_bit (int ,int ) ;
 int snprintf (int ,int,char*,char const*) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int ebook_switch_add(struct acpi_device *device)
{
 struct ebook_switch *button;
 struct input_dev *input;
 const char *hid = acpi_device_hid(device);
 char *name, *class;
 int error;

 button = kzalloc(sizeof(struct ebook_switch), GFP_KERNEL);
 if (!button)
  return -ENOMEM;

 device->driver_data = button;

 button->input = input = input_allocate_device();
 if (!input) {
  error = -ENOMEM;
  goto err_free_button;
 }

 name = acpi_device_name(device);
 class = acpi_device_class(device);

 if (strcmp(hid, XO15_EBOOK_HID)) {
  pr_err("Unsupported hid [%s]\n", hid);
  error = -ENODEV;
  goto err_free_input;
 }

 strcpy(name, XO15_EBOOK_DEVICE_NAME);
 sprintf(class, "%s/%s", XO15_EBOOK_CLASS, XO15_EBOOK_SUBCLASS);

 snprintf(button->phys, sizeof(button->phys), "%s/button/input0", hid);

 input->name = name;
 input->phys = button->phys;
 input->id.bustype = BUS_HOST;
 input->dev.parent = &device->dev;

 input->evbit[0] = BIT_MASK(EV_SW);
 set_bit(SW_TABLET_MODE, input->swbit);

 error = input_register_device(input);
 if (error)
  goto err_free_input;

 ebook_send_state(device);

 if (device->wakeup.flags.valid) {

  acpi_enable_gpe(device->wakeup.gpe_device,
    device->wakeup.gpe_number);
  device_set_wakeup_enable(&device->dev, 1);
 }

 return 0;

 err_free_input:
 input_free_device(input);
 err_free_button:
 kfree(button);
 return error;
}
