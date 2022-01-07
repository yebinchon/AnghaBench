
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct urb {TYPE_2__* ep; } ;
struct oxu_hcd {int lock; } ;
struct list_head {int dummy; } ;
struct ehci_qh {scalar_t__ qh_state; } ;
typedef int gfp_t ;
struct TYPE_8__ {int bandwidth_int_reqs; } ;
struct TYPE_9__ {TYPE_3__ self; } ;
struct TYPE_6__ {unsigned int bEndpointAddress; } ;
struct TYPE_7__ {int hcpriv; TYPE_1__ desc; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int ESHUTDOWN ;
 int HCD_HW_ACCESSIBLE (TYPE_4__*) ;
 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ QH_STATE_IDLE ;
 TYPE_4__* oxu_to_hcd (struct oxu_hcd*) ;
 struct ehci_qh* qh_append_tds (struct oxu_hcd*,struct urb*,struct list_head*,unsigned int,int *) ;
 int qh_schedule (struct oxu_hcd*,struct ehci_qh*) ;
 int qtd_list_free (struct oxu_hcd*,struct urb*,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int intr_submit(struct oxu_hcd *oxu, struct urb *urb,
   struct list_head *qtd_list, gfp_t mem_flags)
{
 unsigned epnum;
 unsigned long flags;
 struct ehci_qh *qh;
 int status = 0;
 struct list_head empty;


 epnum = urb->ep->desc.bEndpointAddress;

 spin_lock_irqsave(&oxu->lock, flags);

 if (unlikely(!HCD_HW_ACCESSIBLE(oxu_to_hcd(oxu)))) {
  status = -ESHUTDOWN;
  goto done;
 }


 INIT_LIST_HEAD(&empty);
 qh = qh_append_tds(oxu, urb, &empty, epnum, &urb->ep->hcpriv);
 if (qh == ((void*)0)) {
  status = -ENOMEM;
  goto done;
 }
 if (qh->qh_state == QH_STATE_IDLE) {
  status = qh_schedule(oxu, qh);
  if (status != 0)
   goto done;
 }


 qh = qh_append_tds(oxu, urb, qtd_list, epnum, &urb->ep->hcpriv);
 BUG_ON(qh == ((void*)0));


 oxu_to_hcd(oxu)->self.bandwidth_int_reqs++;

done:
 spin_unlock_irqrestore(&oxu->lock, flags);
 if (status)
  qtd_list_free(oxu, urb, qtd_list);

 return status;
}
