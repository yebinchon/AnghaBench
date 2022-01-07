
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct toshiba_acpi_dev {scalar_t__ hotkey_event_type; int ntfy_supported; int info_supported; int system_event_supported; TYPE_3__* hotkey_dev; TYPE_2__* acpi_dev; int hotkey_work; scalar_t__ kbd_function_keys_supported; } ;
struct key_entry {int dummy; } ;
typedef scalar_t__ acpi_handle ;
struct TYPE_7__ {int bustype; } ;
struct TYPE_9__ {char* name; char* phys; TYPE_1__ id; } ;
struct TYPE_8__ {scalar_t__ handle; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int HCI_SYSTEM_EVENT ;
 scalar_t__ HCI_SYSTEM_TYPE1 ;
 scalar_t__ HCI_SYSTEM_TYPE2 ;
 int INIT_WORK (int *,int ) ;
 int TOSHIBA_WMI_EVENT_GUID ;
 scalar_t__ TOS_SUCCESS ;
 scalar_t__ acpi_has_method (scalar_t__,char*) ;
 scalar_t__ disable_hotkeys ;
 scalar_t__ ec_get_handle () ;
 scalar_t__ hci_write (struct toshiba_acpi_dev*,int ,int) ;
 int i8042_install_filter (int ) ;
 int i8042_remove_filter (int ) ;
 TYPE_3__* input_allocate_device () ;
 int input_free_device (TYPE_3__*) ;
 int input_register_device (TYPE_3__*) ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 int pr_notice (char*) ;
 int pr_warn (char*) ;
 int sparse_keymap_setup (TYPE_3__*,struct key_entry const*,int *) ;
 struct key_entry* toshiba_acpi_alt_keymap ;
 int toshiba_acpi_enable_hotkeys (struct toshiba_acpi_dev*) ;
 int toshiba_acpi_hotkey_work ;
 int toshiba_acpi_i8042_filter ;
 struct key_entry* toshiba_acpi_keymap ;
 scalar_t__ toshiba_hotkey_event_type_get (struct toshiba_acpi_dev*,scalar_t__*) ;
 scalar_t__ wmi_has_guid (int ) ;

__attribute__((used)) static int toshiba_acpi_setup_keyboard(struct toshiba_acpi_dev *dev)
{
 const struct key_entry *keymap = toshiba_acpi_keymap;
 acpi_handle ec_handle;
 int error;

 if (disable_hotkeys) {
  pr_info("Hotkeys disabled by module parameter\n");
  return 0;
 }

 if (wmi_has_guid(TOSHIBA_WMI_EVENT_GUID)) {
  pr_info("WMI event detected, hotkeys will not be monitored\n");
  return 0;
 }

 error = toshiba_acpi_enable_hotkeys(dev);
 if (error)
  return error;

 if (toshiba_hotkey_event_type_get(dev, &dev->hotkey_event_type))
  pr_notice("Unable to query Hotkey Event Type\n");

 dev->hotkey_dev = input_allocate_device();
 if (!dev->hotkey_dev)
  return -ENOMEM;

 dev->hotkey_dev->name = "Toshiba input device";
 dev->hotkey_dev->phys = "toshiba_acpi/input0";
 dev->hotkey_dev->id.bustype = BUS_HOST;

 if (dev->hotkey_event_type == HCI_SYSTEM_TYPE1 ||
     !dev->kbd_function_keys_supported)
  keymap = toshiba_acpi_keymap;
 else if (dev->hotkey_event_type == HCI_SYSTEM_TYPE2 ||
   dev->kbd_function_keys_supported)
  keymap = toshiba_acpi_alt_keymap;
 else
  pr_info("Unknown event type received %x\n",
   dev->hotkey_event_type);
 error = sparse_keymap_setup(dev->hotkey_dev, keymap, ((void*)0));
 if (error)
  goto err_free_dev;
 ec_handle = ec_get_handle();
 if (ec_handle && acpi_has_method(ec_handle, "NTFY")) {
  INIT_WORK(&dev->hotkey_work, toshiba_acpi_hotkey_work);

  error = i8042_install_filter(toshiba_acpi_i8042_filter);
  if (error) {
   pr_err("Error installing key filter\n");
   goto err_free_dev;
  }

  dev->ntfy_supported = 1;
 }





 if (acpi_has_method(dev->acpi_dev->handle, "INFO"))
  dev->info_supported = 1;
 else if (hci_write(dev, HCI_SYSTEM_EVENT, 1) == TOS_SUCCESS)
  dev->system_event_supported = 1;

 if (!dev->info_supported && !dev->system_event_supported) {
  pr_warn("No hotkey query interface found\n");
  goto err_remove_filter;
 }

 error = input_register_device(dev->hotkey_dev);
 if (error) {
  pr_info("Unable to register input device\n");
  goto err_remove_filter;
 }

 return 0;

 err_remove_filter:
 if (dev->ntfy_supported)
  i8042_remove_filter(toshiba_acpi_i8042_filter);
 err_free_dev:
 input_free_device(dev->hotkey_dev);
 dev->hotkey_dev = ((void*)0);
 return error;
}
