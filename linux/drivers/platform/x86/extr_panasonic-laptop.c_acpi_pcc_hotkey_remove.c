
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcc_acpi {struct pcc_acpi* sinf; int input_dev; int backlight; } ;
struct TYPE_2__ {int kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;


 int EINVAL ;
 struct pcc_acpi* acpi_driver_data (struct acpi_device*) ;
 int backlight_device_unregister (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct pcc_acpi*) ;
 int pcc_attr_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int acpi_pcc_hotkey_remove(struct acpi_device *device)
{
 struct pcc_acpi *pcc = acpi_driver_data(device);

 if (!device || !pcc)
  return -EINVAL;

 sysfs_remove_group(&device->dev.kobj, &pcc_attr_group);

 backlight_device_unregister(pcc->backlight);

 input_unregister_device(pcc->input_dev);

 kfree(pcc->sinf);
 kfree(pcc);

 return 0;
}
