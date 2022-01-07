
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxu_hcd {struct ehci_qh* reclaim; } ;
struct ehci_qh {scalar_t__ qh_state; struct ehci_qh* reclaim; } ;
struct TYPE_2__ {int state; } ;


 scalar_t__ HC_IS_RUNNING (int ) ;
 scalar_t__ QH_STATE_LINKED ;
 scalar_t__ QH_STATE_UNLINK_WAIT ;
 int end_unlink_async (struct oxu_hcd*) ;
 TYPE_1__* oxu_to_hcd (struct oxu_hcd*) ;
 int start_unlink_async (struct oxu_hcd*,struct ehci_qh*) ;

__attribute__((used)) static void unlink_async(struct oxu_hcd *oxu, struct ehci_qh *qh)
{

 if (qh->qh_state == QH_STATE_LINKED
   && oxu->reclaim
   && HC_IS_RUNNING(oxu_to_hcd(oxu)->state)) {
  struct ehci_qh *last;

  for (last = oxu->reclaim;
    last->reclaim;
    last = last->reclaim)
   continue;
  qh->qh_state = QH_STATE_UNLINK_WAIT;
  last->reclaim = qh;


 } else if (!HC_IS_RUNNING(oxu_to_hcd(oxu)->state) && oxu->reclaim)
  end_unlink_async(oxu);


 if (qh->qh_state == QH_STATE_LINKED)
  start_unlink_async(oxu, qh);
}
