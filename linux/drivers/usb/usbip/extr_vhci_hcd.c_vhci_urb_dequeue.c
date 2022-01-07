
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhci_unlink {int seqnum; int list; int unlink_seqnum; } ;
struct vhci_priv {int seqnum; int list; struct vhci_device* vdev; } ;
struct vhci_hcd {int seqnum; struct vhci* vhci; } ;
struct TYPE_2__ {int tcp_socket; } ;
struct vhci_device {int priv_lock; int waitq_tx; int unlink_tx; TYPE_1__ ud; } ;
struct vhci {int lock; } ;
struct usb_hcd {int dummy; } ;
struct urb {int status; struct vhci_priv* hcpriv; } ;


 int EIDRM ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int VDEV_EVENT_ERROR_MALLOC ;
 int atomic_inc_return (int *) ;
 struct vhci_hcd* hcd_to_vhci_hcd (struct usb_hcd*) ;
 int kfree (struct vhci_priv*) ;
 struct vhci_unlink* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int pr_info (char*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_hcd_giveback_urb (struct usb_hcd*,struct urb*,int ) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;
 int usbip_dbg_vhci_hc (char*) ;
 int usbip_event_add (TYPE_1__*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int vhci_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct vhci_hcd *vhci_hcd = hcd_to_vhci_hcd(hcd);
 struct vhci *vhci = vhci_hcd->vhci;
 struct vhci_priv *priv;
 struct vhci_device *vdev;
 unsigned long flags;

 spin_lock_irqsave(&vhci->lock, flags);

 priv = urb->hcpriv;
 if (!priv) {


  spin_unlock_irqrestore(&vhci->lock, flags);
  return -EIDRM;
 }

 {
  int ret = 0;

  ret = usb_hcd_check_unlink_urb(hcd, urb, status);
  if (ret) {
   spin_unlock_irqrestore(&vhci->lock, flags);
   return ret;
  }
 }


 vdev = priv->vdev;

 if (!vdev->ud.tcp_socket) {

  spin_lock(&vdev->priv_lock);

  list_del(&priv->list);
  kfree(priv);
  urb->hcpriv = ((void*)0);

  spin_unlock(&vdev->priv_lock);






  usb_hcd_unlink_urb_from_ep(hcd, urb);

  spin_unlock_irqrestore(&vhci->lock, flags);
  usb_hcd_giveback_urb(hcd, urb, urb->status);
  spin_lock_irqsave(&vhci->lock, flags);

 } else {

  struct vhci_unlink *unlink;

  spin_lock(&vdev->priv_lock);


  unlink = kzalloc(sizeof(struct vhci_unlink), GFP_ATOMIC);
  if (!unlink) {
   spin_unlock(&vdev->priv_lock);
   spin_unlock_irqrestore(&vhci->lock, flags);
   usbip_event_add(&vdev->ud, VDEV_EVENT_ERROR_MALLOC);
   return -ENOMEM;
  }

  unlink->seqnum = atomic_inc_return(&vhci_hcd->seqnum);
  if (unlink->seqnum == 0xffff)
   pr_info("seqnum max\n");

  unlink->unlink_seqnum = priv->seqnum;



  list_add_tail(&unlink->list, &vdev->unlink_tx);
  wake_up(&vdev->waitq_tx);

  spin_unlock(&vdev->priv_lock);
 }

 spin_unlock_irqrestore(&vhci->lock, flags);

 usbip_dbg_vhci_hc("leave\n");
 return 0;
}
