
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {int iaa_in_progress; TYPE_2__* regs; TYPE_1__* async; scalar_t__ has_synopsys_hc_bug; } ;
struct TYPE_4__ {int async_next; } ;
struct TYPE_3__ {scalar_t__ qh_dma; } ;


 int ehci_writel (struct ehci_hcd*,int ,int *) ;
 int end_unlink_async (struct ehci_hcd*) ;

__attribute__((used)) static void end_iaa_cycle(struct ehci_hcd *ehci)
{
 if (ehci->has_synopsys_hc_bug)
  ehci_writel(ehci, (u32) ehci->async->qh_dma,
       &ehci->regs->async_next);


 ehci->iaa_in_progress = 0;

 end_unlink_async(ehci);
}
