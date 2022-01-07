
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot {int power_domain; } ;
struct hotplug_slot {int dummy; } ;


 int rtas_get_power_level (int ,int*) ;
 struct slot* to_slot (struct hotplug_slot*) ;

__attribute__((used)) static int get_power_status(struct hotplug_slot *hotplug_slot, u8 *value)
{
 int retval, level;
 struct slot *slot = to_slot(hotplug_slot);

 retval = rtas_get_power_level(slot->power_domain, &level);
 if (!retval)
  *value = level;
 return retval;
}
