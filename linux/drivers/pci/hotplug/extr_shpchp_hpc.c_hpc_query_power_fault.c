
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slot {int hp_slot; struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int POWER_FAULT ;
 int SLOT_REG (int ) ;
 int shpc_readl (struct controller*,int ) ;

__attribute__((used)) static int hpc_query_power_fault(struct slot *slot)
{
 struct controller *ctrl = slot->ctrl;
 u32 slot_reg = shpc_readl(ctrl, SLOT_REG(slot->hp_slot));


 return !(slot_reg & POWER_FAULT);
}
