
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpiphp_slot {int dummy; } ;


 int get_slot_status (struct acpiphp_slot*) ;

u8 acpiphp_get_adapter_status(struct acpiphp_slot *slot)
{
 return !!get_slot_status(slot);
}
