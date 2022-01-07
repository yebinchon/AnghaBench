
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot {int dummy; } ;
struct hotplug_slot {int dummy; } ;


 int cpci_get_power_status (struct slot*) ;
 struct slot* to_slot (struct hotplug_slot*) ;

__attribute__((used)) static int
get_power_status(struct hotplug_slot *hotplug_slot, u8 *value)
{
 struct slot *slot = to_slot(hotplug_slot);

 *value = cpci_get_power_status(slot);
 return 0;
}
