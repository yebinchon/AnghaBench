
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rfkill {int dummy; } ;
struct asus_wmi {TYPE_3__* driver; TYPE_1__* platform_device; } ;
struct asus_rfkill {int dev_id; struct asus_wmi* asus; struct rfkill* rfkill; } ;
typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
struct TYPE_6__ {TYPE_2__* quirks; } ;
struct TYPE_5__ {scalar_t__ wapf; scalar_t__ hotplug_wireless; } ;
struct TYPE_4__ {int dev; } ;


 int ASUS_WMI_DEVID_WLAN ;
 int EINVAL ;
 int asus_rfkill_ops ;
 int asus_rfkill_wlan_ops ;
 int asus_wmi_get_devstate_simple (struct asus_wmi*,int) ;
 struct rfkill* rfkill_alloc (char const*,int *,int,int *,struct asus_rfkill*) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_init_sw_state (struct rfkill*,int) ;
 int rfkill_register (struct rfkill*) ;
 int rfkill_set_led_trigger_name (struct rfkill*,char*) ;

__attribute__((used)) static int asus_new_rfkill(struct asus_wmi *asus,
      struct asus_rfkill *arfkill,
      const char *name, enum rfkill_type type, int dev_id)
{
 int result = asus_wmi_get_devstate_simple(asus, dev_id);
 struct rfkill **rfkill = &arfkill->rfkill;

 if (result < 0)
  return result;

 arfkill->dev_id = dev_id;
 arfkill->asus = asus;

 if (dev_id == ASUS_WMI_DEVID_WLAN &&
     asus->driver->quirks->hotplug_wireless)
  *rfkill = rfkill_alloc(name, &asus->platform_device->dev, type,
           &asus_rfkill_wlan_ops, arfkill);
 else
  *rfkill = rfkill_alloc(name, &asus->platform_device->dev, type,
           &asus_rfkill_ops, arfkill);

 if (!*rfkill)
  return -EINVAL;

 if ((dev_id == ASUS_WMI_DEVID_WLAN) &&
   (asus->driver->quirks->wapf > 0))
  rfkill_set_led_trigger_name(*rfkill, "asus-wlan");

 rfkill_init_sw_state(*rfkill, !result);
 result = rfkill_register(*rfkill);
 if (result) {
  rfkill_destroy(*rfkill);
  *rfkill = ((void*)0);
  return result;
 }
 return 0;
}
