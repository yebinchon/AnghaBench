
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ehci_hcd {int async_idle; int async_unlink; TYPE_2__* async; scalar_t__ async_count; } ;
struct TYPE_3__ {scalar_t__ qh; } ;
struct TYPE_4__ {TYPE_1__ qh_next; } ;


 int WARN_ON (int) ;
 int ehci_poll_ASS (struct ehci_hcd*) ;
 int list_empty (int *) ;

__attribute__((used)) static void disable_async(struct ehci_hcd *ehci)
{
 if (--ehci->async_count)
  return;


 WARN_ON(ehci->async->qh_next.qh || !list_empty(&ehci->async_unlink) ||
   !list_empty(&ehci->async_idle));


 ehci_poll_ASS(ehci);
}
