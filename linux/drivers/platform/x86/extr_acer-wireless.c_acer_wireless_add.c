
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int product; int vendor; int bustype; } ;
struct input_dev {char* name; char* phys; int keybit; int evbit; TYPE_1__ id; } ;
struct acpi_device {struct input_dev* driver_data; int dev; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int KEY_RFKILL ;
 int PCI_VENDOR_ID_AI ;
 struct input_dev* devm_input_allocate_device (int *) ;
 int input_register_device (struct input_dev*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int acer_wireless_add(struct acpi_device *adev)
{
 struct input_dev *idev;

 idev = devm_input_allocate_device(&adev->dev);
 if (!idev)
  return -ENOMEM;

 adev->driver_data = idev;
 idev->name = "Acer Wireless Radio Control";
 idev->phys = "acer-wireless/input0";
 idev->id.bustype = BUS_HOST;
 idev->id.vendor = PCI_VENDOR_ID_AI;
 idev->id.product = 0x1229;
 set_bit(EV_KEY, idev->evbit);
 set_bit(KEY_RFKILL, idev->keybit);

 return input_register_device(idev);
}
