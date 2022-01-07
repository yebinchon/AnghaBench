
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct key_entry {scalar_t__ type; } ;
struct acpi_device {int handle; } ;


 int INIT_SPARSE_KEYMAP ;
 scalar_t__ KE_KEY ;
 int acpi_handle_debug (int ,char*,int ) ;
 int inited ;
 struct key_entry* sparse_keymap_entry_from_scancode (int ,int) ;
 int sparse_keymap_report_entry (int ,struct key_entry*,int,int) ;
 int wmi_input_dev ;

__attribute__((used)) static void acpi_notify(struct acpi_device *device, u32 event)
{
 struct key_entry *key;

 acpi_handle_debug(device->handle, "notify: %d\n", event);
 if (inited & INIT_SPARSE_KEYMAP) {
  key = sparse_keymap_entry_from_scancode(wmi_input_dev, 0x80);
  if (key && key->type == KE_KEY)
   sparse_keymap_report_entry(wmi_input_dev, key, 1, 1);
 }
}
