
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpiphp_slot {int flags; } ;


 int SLOT_ENABLED ;

u8 acpiphp_get_power_status(struct acpiphp_slot *slot)
{
 return (slot->flags & SLOT_ENABLED);
}
