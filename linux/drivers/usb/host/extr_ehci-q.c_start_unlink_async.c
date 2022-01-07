
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_qh {scalar_t__ qh_state; } ;
struct ehci_hcd {int dummy; } ;


 scalar_t__ QH_STATE_LINKED ;
 int single_unlink_async (struct ehci_hcd*,struct ehci_qh*) ;
 int start_iaa_cycle (struct ehci_hcd*) ;

__attribute__((used)) static void start_unlink_async(struct ehci_hcd *ehci, struct ehci_qh *qh)
{

 if (qh->qh_state != QH_STATE_LINKED)
  return;

 single_unlink_async(ehci, qh);
 start_iaa_cycle(ehci);
}
