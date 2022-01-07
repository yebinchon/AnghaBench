
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int acpi_status ;
struct TYPE_7__ {int bustype; } ;
struct TYPE_8__ {char* name; char* phys; TYPE_1__ id; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int BUS_HOST ;
 int INIT_INPUT_WMI_0 ;
 int INIT_INPUT_WMI_2 ;
 int INIT_SPARSE_KEYMAP ;
 int WMI_EVENT_GUID0 ;
 int WMI_EVENT_GUID2 ;
 int inited ;
 TYPE_2__* input_allocate_device () ;
 int input_free_device (TYPE_2__*) ;
 scalar_t__ input_register_device (TYPE_2__*) ;
 int pr_info (char*) ;
 scalar_t__ sparse_keymap_setup (TYPE_2__*,int ,int *) ;
 TYPE_2__* wmi_input_dev ;
 int wmi_install_notify_handler (int ,int ,void*) ;
 int wmi_keymap ;
 int wmi_notify ;

__attribute__((used)) static void wmi_input_setup(void)
{
 acpi_status status;

 wmi_input_dev = input_allocate_device();
 if (wmi_input_dev) {
  wmi_input_dev->name = "LG WMI hotkeys";
  wmi_input_dev->phys = "wmi/input0";
  wmi_input_dev->id.bustype = BUS_HOST;

  if (sparse_keymap_setup(wmi_input_dev, wmi_keymap, ((void*)0)) ||
      input_register_device(wmi_input_dev)) {
   pr_info("Cannot initialize input device");
   input_free_device(wmi_input_dev);
   return;
  }

  inited |= INIT_SPARSE_KEYMAP;
  status = wmi_install_notify_handler(WMI_EVENT_GUID0, wmi_notify,
          (void *)0);
  if (ACPI_SUCCESS(status))
   inited |= INIT_INPUT_WMI_0;

  status = wmi_install_notify_handler(WMI_EVENT_GUID2, wmi_notify,
          (void *)2);
  if (ACPI_SUCCESS(status))
   inited |= INIT_INPUT_WMI_2;
 } else {
  pr_info("Cannot allocate input device");
 }
}
