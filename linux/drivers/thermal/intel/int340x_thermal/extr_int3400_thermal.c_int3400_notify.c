
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct int3400_thermal_priv {TYPE_2__* thermal; } ;
typedef int acpi_handle ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ device; int temperature; int type; } ;


 int GFP_KERNEL ;

 int KOBJ_CHANGE ;
 int THERMAL_TABLE_CHANGED ;
 char* kasprintf (int ,char*,...) ;
 int kobject_uevent_env (int *,int ,char**) ;

__attribute__((used)) static void int3400_notify(acpi_handle handle,
   u32 event,
   void *data)
{
 struct int3400_thermal_priv *priv = data;
 char *thermal_prop[5];

 if (!priv)
  return;

 switch (event) {
 case 128:
  thermal_prop[0] = kasprintf(GFP_KERNEL, "NAME=%s",
    priv->thermal->type);
  thermal_prop[1] = kasprintf(GFP_KERNEL, "TEMP=%d",
    priv->thermal->temperature);
  thermal_prop[2] = kasprintf(GFP_KERNEL, "TRIP=");
  thermal_prop[3] = kasprintf(GFP_KERNEL, "EVENT=%d",
    THERMAL_TABLE_CHANGED);
  thermal_prop[4] = ((void*)0);
  kobject_uevent_env(&priv->thermal->device.kobj, KOBJ_CHANGE,
    thermal_prop);
  break;
 default:

  break;
 }
}
