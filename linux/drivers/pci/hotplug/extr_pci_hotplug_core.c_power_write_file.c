
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_slot {struct hotplug_slot* hotplug; } ;
struct hotplug_slot {int owner; TYPE_1__* ops; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* disable_slot ) (struct hotplug_slot*) ;int (* enable_slot ) (struct hotplug_slot*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int dbg (char*,int) ;
 int err (char*) ;
 int module_put (int ) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 int stub1 (struct hotplug_slot*) ;
 int stub2 (struct hotplug_slot*) ;
 int try_module_get (int ) ;

__attribute__((used)) static ssize_t power_write_file(struct pci_slot *pci_slot, const char *buf,
    size_t count)
{
 struct hotplug_slot *slot = pci_slot->hotplug;
 unsigned long lpower;
 u8 power;
 int retval = 0;

 lpower = simple_strtoul(buf, ((void*)0), 10);
 power = (u8)(lpower & 0xff);
 dbg("power = %d\n", power);

 if (!try_module_get(slot->owner)) {
  retval = -ENODEV;
  goto exit;
 }
 switch (power) {
 case 0:
  if (slot->ops->disable_slot)
   retval = slot->ops->disable_slot(slot);
  break;

 case 1:
  if (slot->ops->enable_slot)
   retval = slot->ops->enable_slot(slot);
  break;

 default:
  err("Illegal value specified for power\n");
  retval = -EINVAL;
 }
 module_put(slot->owner);

exit:
 if (retval)
  return retval;
 return count;
}
