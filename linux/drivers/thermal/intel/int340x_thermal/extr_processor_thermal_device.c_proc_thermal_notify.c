
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct proc_thermal_device {int dev; int int340x_zone; } ;
typedef int acpi_handle ;



 int THERMAL_DEVICE_POWER_CAPABILITY_CHANGED ;
 int dev_dbg (int ,char*,int) ;
 int int340x_thermal_zone_device_update (int ,int ) ;
 int proc_thermal_read_ppcc (struct proc_thermal_device*) ;

__attribute__((used)) static void proc_thermal_notify(acpi_handle handle, u32 event, void *data)
{
 struct proc_thermal_device *proc_priv = data;

 if (!proc_priv)
  return;

 switch (event) {
 case 128:
  proc_thermal_read_ppcc(proc_priv);
  int340x_thermal_zone_device_update(proc_priv->int340x_zone,
    THERMAL_DEVICE_POWER_CAPABILITY_CHANGED);
  break;
 default:
  dev_dbg(proc_priv->dev, "Unsupported event [0x%x]\n", event);
  break;
 }
}
