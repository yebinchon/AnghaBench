
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_acpi_dev {int hotkey_dev; } ;


 int pr_info (char*,int) ;
 int sparse_keymap_report_event (int ,int,int,int) ;

__attribute__((used)) static void toshiba_acpi_report_hotkey(struct toshiba_acpi_dev *dev,
           int scancode)
{
 if (scancode == 0x100)
  return;


 if (scancode & 0x80)
  return;

 if (!sparse_keymap_report_event(dev->hotkey_dev, scancode, 1, 1))
  pr_info("Unknown key %x\n", scancode);
}
