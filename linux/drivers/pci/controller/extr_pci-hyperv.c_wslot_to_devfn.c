
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; int dev; } ;
union win_slot_encoding {TYPE_1__ bits; int slot; } ;
typedef int u32 ;


 int PCI_DEVFN (int ,int ) ;

__attribute__((used)) static int wslot_to_devfn(u32 wslot)
{
 union win_slot_encoding slot_no;

 slot_no.slot = wslot;
 return PCI_DEVFN(slot_no.bits.dev, slot_no.bits.func);
}
