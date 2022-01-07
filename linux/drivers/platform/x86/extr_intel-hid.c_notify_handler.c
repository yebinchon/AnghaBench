
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct intel_hid_priv {int input_dev; int array; scalar_t__ wakeup_mode; } ;
typedef int acpi_handle ;


 int INTEL_HID_DSM_HDEM_FN ;
 int KEY_POWER ;
 int dev_dbg (int *,char*,unsigned long long) ;
 struct intel_hid_priv* dev_get_drvdata (int *) ;
 int dev_info (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int intel_hid_evaluate_method (int ,int ,unsigned long long*) ;
 int pm_wakeup_hard_event (int *) ;
 int sparse_keymap_entry_from_scancode (int ,int) ;
 int sparse_keymap_report_event (int ,unsigned long long,int,int) ;

__attribute__((used)) static void notify_handler(acpi_handle handle, u32 event, void *context)
{
 struct platform_device *device = context;
 struct intel_hid_priv *priv = dev_get_drvdata(&device->dev);
 unsigned long long ev_index;

 if (priv->wakeup_mode) {






  if (event == 0xce)
   goto wakeup;


  if (event == 0xc0 || !priv->array)
   return;

  if (!sparse_keymap_entry_from_scancode(priv->array, event)) {
   dev_info(&device->dev, "unknown event 0x%x\n", event);
   return;
  }

wakeup:
  pm_wakeup_hard_event(&device->dev);
  return;
 }
 if (!priv->array) {
  if (event == 0xce) {
   input_report_key(priv->input_dev, KEY_POWER, 1);
   input_sync(priv->input_dev);
   return;
  }

  if (event == 0xcf) {
   input_report_key(priv->input_dev, KEY_POWER, 0);
   input_sync(priv->input_dev);
   return;
  }
 }


 if (event != 0xc0) {
  if (!priv->array ||
      !sparse_keymap_report_event(priv->array, event, 1, 1))
   dev_dbg(&device->dev, "unknown event 0x%x\n", event);
  return;
 }

 if (!intel_hid_evaluate_method(handle, INTEL_HID_DSM_HDEM_FN,
           &ev_index)) {
  dev_warn(&device->dev, "failed to get event index\n");
  return;
 }

 if (!sparse_keymap_report_event(priv->input_dev, ev_index, 1, 1))
  dev_dbg(&device->dev, "unknown event index 0x%llx\n",
    ev_index);
}
