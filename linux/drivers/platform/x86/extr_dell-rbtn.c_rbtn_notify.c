
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rbtn_data {int type; scalar_t__ suspended; } ;
struct acpi_device {int dev; struct rbtn_data* driver_data; } ;




 int atomic_notifier_call_chain (int *,int,struct acpi_device*) ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,int) ;
 int rbtn_chain_head ;
 int rbtn_input_event (struct rbtn_data*) ;
 int rbtn_rfkill_event (struct acpi_device*) ;

__attribute__((used)) static void rbtn_notify(struct acpi_device *device, u32 event)
{
 struct rbtn_data *rbtn_data = device->driver_data;





 if (rbtn_data->suspended) {
  dev_dbg(&device->dev, "ACPI notification ignored\n");
  return;
 }

 if (event != 0x80) {
  dev_info(&device->dev, "Received unknown event (0x%x)\n",
    event);
  return;
 }

 switch (rbtn_data->type) {
 case 128:
  rbtn_input_event(rbtn_data);
  break;
 case 129:
  rbtn_rfkill_event(device);
  atomic_notifier_call_chain(&rbtn_chain_head, event, device);
  break;
 default:
  break;
 }
}
