
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pnv_php_slot {int attention_state; } ;
struct hotplug_slot {int dummy; } ;


 struct pnv_php_slot* to_pnv_php_slot (struct hotplug_slot*) ;

__attribute__((used)) static int pnv_php_get_attention_state(struct hotplug_slot *slot, u8 *state)
{
 struct pnv_php_slot *php_slot = to_pnv_php_slot(slot);

 *state = php_slot->attention_state;
 return 0;
}
