
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct toshiba_acpi_dev {scalar_t__ special_functions; scalar_t__ kbd_function_keys_supported; TYPE_1__* acpi_dev; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int ENODEV ;
 int HCI_HOTKEY_ENABLE ;
 int HCI_HOTKEY_EVENT ;
 int HCI_HOTKEY_SPECIAL_FUNCTIONS ;
 scalar_t__ TOS_FAILURE ;
 scalar_t__ TOS_NOT_SUPPORTED ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 scalar_t__ hci_write (struct toshiba_acpi_dev*,int ,int ) ;

__attribute__((used)) static int toshiba_acpi_enable_hotkeys(struct toshiba_acpi_dev *dev)
{
 acpi_status status;
 u32 result;

 status = acpi_evaluate_object(dev->acpi_dev->handle,
          "ENAB", ((void*)0), ((void*)0));
 if (ACPI_FAILURE(status))
  return -ENODEV;





 if (dev->kbd_function_keys_supported && dev->special_functions)
  result = hci_write(dev, HCI_HOTKEY_EVENT,
       HCI_HOTKEY_SPECIAL_FUNCTIONS);
 else
  result = hci_write(dev, HCI_HOTKEY_EVENT, HCI_HOTKEY_ENABLE);

 if (result == TOS_FAILURE)
  return -EIO;
 else if (result == TOS_NOT_SUPPORTED)
  return -ENODEV;

 return 0;
}
