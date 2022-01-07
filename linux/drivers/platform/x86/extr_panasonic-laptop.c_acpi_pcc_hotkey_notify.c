
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcc_acpi {int dummy; } ;
struct acpi_device {int dummy; } ;



 struct pcc_acpi* acpi_driver_data (struct acpi_device*) ;
 int acpi_pcc_generate_keyinput (struct pcc_acpi*) ;

__attribute__((used)) static void acpi_pcc_hotkey_notify(struct acpi_device *device, u32 event)
{
 struct pcc_acpi *pcc = acpi_driver_data(device);

 switch (event) {
 case 128:
  acpi_pcc_generate_keyinput(pcc);
  break;
 default:

  break;
 }
}
