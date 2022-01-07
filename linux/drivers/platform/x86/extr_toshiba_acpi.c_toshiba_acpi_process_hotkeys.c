
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct toshiba_acpi_dev {int key_event_valid; int last_key_event; scalar_t__ system_event_supported; scalar_t__ info_supported; } ;


 int HCI_SYSTEM_EVENT ;
 int TOS_FIFO_EMPTY ;


 int hci_read (struct toshiba_acpi_dev*,int ,int*) ;
 int hci_write (struct toshiba_acpi_dev*,int ,int) ;
 int pr_err (char*) ;
 int pr_notice (char*) ;
 int toshiba_acpi_query_hotkey (struct toshiba_acpi_dev*) ;
 int toshiba_acpi_report_hotkey (struct toshiba_acpi_dev*,int) ;

__attribute__((used)) static void toshiba_acpi_process_hotkeys(struct toshiba_acpi_dev *dev)
{
 if (dev->info_supported) {
  int scancode = toshiba_acpi_query_hotkey(dev);

  if (scancode < 0) {
   pr_err("Failed to query hotkey event\n");
  } else if (scancode != 0) {
   toshiba_acpi_report_hotkey(dev, scancode);
   dev->key_event_valid = 1;
   dev->last_key_event = scancode;
  }
 } else if (dev->system_event_supported) {
  u32 result;
  u32 value;
  int retries = 3;

  do {
   result = hci_read(dev, HCI_SYSTEM_EVENT, &value);
   switch (result) {
   case 128:
    toshiba_acpi_report_hotkey(dev, (int)value);
    dev->key_event_valid = 1;
    dev->last_key_event = value;
    break;
   case 129:





    result = hci_write(dev, HCI_SYSTEM_EVENT, 1);
    if (result == 128)
     pr_notice("Re-enabled hotkeys\n");

   default:
    retries--;
    break;
   }
  } while (retries && result != TOS_FIFO_EMPTY);
 }
}
