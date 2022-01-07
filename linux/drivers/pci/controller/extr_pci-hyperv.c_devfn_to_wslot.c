
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; int dev; } ;
union win_slot_encoding {scalar_t__ slot; TYPE_1__ bits; } ;
typedef scalar_t__ u32 ;


 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;

__attribute__((used)) static u32 devfn_to_wslot(int devfn)
{
 union win_slot_encoding wslot;

 wslot.slot = 0;
 wslot.bits.dev = PCI_SLOT(devfn);
 wslot.bits.func = PCI_FUNC(devfn);

 return wslot.slot;
}
