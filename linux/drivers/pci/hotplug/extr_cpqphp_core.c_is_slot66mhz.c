
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {scalar_t__ p_sm_slot; } ;


 scalar_t__ SMBIOS_SLOT_TYPE ;
 int readb (scalar_t__) ;

__attribute__((used)) static inline int is_slot66mhz(struct slot *slot)
{
 return (readb(slot->p_sm_slot + SMBIOS_SLOT_TYPE) == 0x0E) ? 1 : 0;
}
