
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
struct wmi_device {int dev; } ;
struct key_entry {int dummy; } ;
struct huawei_wmi_priv {int idev; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int WMI0_EXPENSIVE_GUID ;
 struct huawei_wmi_priv* dev_get_drvdata (int *) ;
 int dev_info (int *,char*,int) ;
 int kfree (scalar_t__) ;
 struct key_entry* sparse_keymap_entry_from_scancode (int ,int) ;
 int sparse_keymap_report_entry (int ,struct key_entry const*,int,int) ;
 int wmi_query_block (int ,int ,struct acpi_buffer*) ;

__attribute__((used)) static void huawei_wmi_process_key(struct wmi_device *wdev, int code)
{
 struct huawei_wmi_priv *priv = dev_get_drvdata(&wdev->dev);
 const struct key_entry *key;






 if (code == 0x80) {
  struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
  union acpi_object *obj;
  acpi_status status;

  status = wmi_query_block(WMI0_EXPENSIVE_GUID, 0, &response);
  if (ACPI_FAILURE(status))
   return;

  obj = (union acpi_object *)response.pointer;
  if (obj && obj->type == ACPI_TYPE_INTEGER)
   code = obj->integer.value;

  kfree(response.pointer);
 }

 key = sparse_keymap_entry_from_scancode(priv->idev, code);
 if (!key) {
  dev_info(&wdev->dev, "Unknown key pressed, code: 0x%04x\n", code);
  return;
 }

 sparse_keymap_report_entry(priv->idev, key, 1, 1);
}
