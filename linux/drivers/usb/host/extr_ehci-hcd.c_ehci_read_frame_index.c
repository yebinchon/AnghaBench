
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_hcd {TYPE_1__* regs; scalar_t__ frame_index_bug; } ;
struct TYPE_2__ {int frame_index; } ;


 int ehci_moschip_read_frame_index (struct ehci_hcd*) ;
 int ehci_readl (struct ehci_hcd*,int *) ;

__attribute__((used)) static inline unsigned ehci_read_frame_index(struct ehci_hcd *ehci)
{
 if (ehci->frame_index_bug)
  return ehci_moschip_read_frame_index(ehci);
 return ehci_readl(ehci, &ehci->regs->frame_index);
}
