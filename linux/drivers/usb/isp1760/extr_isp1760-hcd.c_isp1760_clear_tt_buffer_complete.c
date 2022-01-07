
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct isp1760_qh* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct isp1760_qh {scalar_t__ tt_buffer_dirty; } ;
struct isp1760_hcd {int lock; } ;


 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int schedule_ptds (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void isp1760_clear_tt_buffer_complete(struct usb_hcd *hcd,
      struct usb_host_endpoint *ep)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 struct isp1760_qh *qh = ep->hcpriv;
 unsigned long spinflags;

 if (!qh)
  return;

 spin_lock_irqsave(&priv->lock, spinflags);
 qh->tt_buffer_dirty = 0;
 schedule_ptds(hcd);
 spin_unlock_irqrestore(&priv->lock, spinflags);
}
