
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int bEndpointAddress; } ;
struct usb_host_endpoint {struct fotg210_qh* hcpriv; TYPE_4__ desc; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_7__ {struct fotg210_qh* qh; } ;
struct fotg210_qh {int qh_state; int qtd_list; int clearing_tt; TYPE_3__ qh_next; int td_list; int * hw; } ;
struct fotg210_iso_stream {int qh_state; int qtd_list; int clearing_tt; TYPE_3__ qh_next; int td_list; int * hw; } ;
struct fotg210_hcd {scalar_t__ rh_state; int lock; TYPE_2__* async; } ;
struct TYPE_5__ {struct fotg210_qh* qh; } ;
struct TYPE_6__ {TYPE_1__ qh_next; } ;


 scalar_t__ FOTG210_RH_RUNNING ;





 int fotg210_err (struct fotg210_hcd*,char*,struct fotg210_qh*,int ,int,char*) ;
 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 int kfree (struct fotg210_qh*) ;
 int list_empty (int *) ;
 int qh_destroy (struct fotg210_hcd*,struct fotg210_qh*) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_unlink_async (struct fotg210_hcd*,struct fotg210_qh*) ;

__attribute__((used)) static void fotg210_endpoint_disable(struct usb_hcd *hcd,
  struct usb_host_endpoint *ep)
{
 struct fotg210_hcd *fotg210 = hcd_to_fotg210(hcd);
 unsigned long flags;
 struct fotg210_qh *qh, *tmp;




rescan:
 spin_lock_irqsave(&fotg210->lock, flags);
 qh = ep->hcpriv;
 if (!qh)
  goto done;




 if (qh->hw == ((void*)0)) {
  struct fotg210_iso_stream *stream = ep->hcpriv;

  if (!list_empty(&stream->td_list))
   goto idle_timeout;


  kfree(stream);
  goto done;
 }

 if (fotg210->rh_state < FOTG210_RH_RUNNING)
  qh->qh_state = 131;
 switch (qh->qh_state) {
 case 130:
 case 132:
  for (tmp = fotg210->async->qh_next.qh;
    tmp && tmp != qh;
    tmp = tmp->qh_next.qh)
   continue;



  if (tmp)
   start_unlink_async(fotg210, qh);

 case 129:
 case 128:
idle_timeout:
  spin_unlock_irqrestore(&fotg210->lock, flags);
  schedule_timeout_uninterruptible(1);
  goto rescan;
 case 131:
  if (qh->clearing_tt)
   goto idle_timeout;
  if (list_empty(&qh->qtd_list)) {
   qh_destroy(fotg210, qh);
   break;
  }

 default:



  fotg210_err(fotg210, "qh %p (#%02x) state %d%s\n",
    qh, ep->desc.bEndpointAddress, qh->qh_state,
    list_empty(&qh->qtd_list) ? "" : "(has tds)");
  break;
 }
done:
 ep->hcpriv = ((void*)0);
 spin_unlock_irqrestore(&fotg210->lock, flags);
}
