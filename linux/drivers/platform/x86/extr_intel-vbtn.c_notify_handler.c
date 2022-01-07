
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct key_entry {scalar_t__ type; } ;
struct intel_vbtn_priv {int input_dev; scalar_t__ wakeup_mode; } ;
typedef int acpi_handle ;


 scalar_t__ KE_IGNORE ;
 scalar_t__ KE_SW ;
 int dev_dbg (int *,char*,int) ;
 struct intel_vbtn_priv* dev_get_drvdata (int *) ;
 int pm_wakeup_hard_event (int *) ;
 struct key_entry* sparse_keymap_entry_from_scancode (int ,int) ;
 scalar_t__ sparse_keymap_report_event (int ,int,unsigned int,int) ;

__attribute__((used)) static void notify_handler(acpi_handle handle, u32 event, void *context)
{
 struct platform_device *device = context;
 struct intel_vbtn_priv *priv = dev_get_drvdata(&device->dev);
 unsigned int val = !(event & 1);
 const struct key_entry *ke, *ke_rel;
 bool autorelease;

 if (priv->wakeup_mode) {
  ke = sparse_keymap_entry_from_scancode(priv->input_dev, event);
  if (ke) {
   pm_wakeup_hard_event(&device->dev);






   if (ke->type == KE_SW)
    sparse_keymap_report_event(priv->input_dev,
          event,
          val,
          0);
   return;
  }
  goto out_unknown;
 }





 ke_rel = sparse_keymap_entry_from_scancode(priv->input_dev, event | 1);
 autorelease = val && (!ke_rel || ke_rel->type == KE_IGNORE);

 if (sparse_keymap_report_event(priv->input_dev, event, val, autorelease))
  return;

out_unknown:
 dev_dbg(&device->dev, "unknown event index 0x%x\n", event);
}
