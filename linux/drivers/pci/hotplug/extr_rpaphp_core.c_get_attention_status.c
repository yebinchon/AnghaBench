
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot {int attention_status; } ;
struct hotplug_slot {int dummy; } ;


 struct slot* to_slot (struct hotplug_slot*) ;

__attribute__((used)) static int get_attention_status(struct hotplug_slot *hotplug_slot, u8 *value)
{
 struct slot *slot = to_slot(hotplug_slot);
 *value = slot->attention_status;
 return 0;
}
