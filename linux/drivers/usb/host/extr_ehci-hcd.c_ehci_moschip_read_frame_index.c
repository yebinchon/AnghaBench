
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int frame_index; } ;


 unsigned int ehci_readl (struct ehci_hcd*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned ehci_moschip_read_frame_index(struct ehci_hcd *ehci)
{
 unsigned uf;

 uf = ehci_readl(ehci, &ehci->regs->frame_index);
 if (unlikely((uf & 7) == 0))
  uf = ehci_readl(ehci, &ehci->regs->frame_index);
 return uf;
}
