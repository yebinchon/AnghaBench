
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hotplug_slot {int dummy; } ;


 int cpci_set_attention_status (int ,int ) ;
 int to_slot (struct hotplug_slot*) ;

__attribute__((used)) static int
set_attention_status(struct hotplug_slot *hotplug_slot, u8 status)
{
 return cpci_set_attention_status(to_slot(hotplug_slot), status);
}
