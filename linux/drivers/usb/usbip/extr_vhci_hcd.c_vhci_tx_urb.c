
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhci_priv {int seqnum; int list; struct urb* urb; struct vhci_device* vdev; } ;
struct vhci_hcd {int seqnum; } ;
struct vhci_device {int priv_lock; int waitq_tx; int priv_tx; int ud; } ;
struct urb {void* hcpriv; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 int VDEV_EVENT_ERROR_MALLOC ;
 int atomic_inc_return (int *) ;
 int dev_info (int *,char*) ;
 struct vhci_priv* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbip_event_add (int *,int ) ;
 struct vhci_hcd* vdev_to_vhci_hcd (struct vhci_device*) ;
 int wake_up (int *) ;

__attribute__((used)) static void vhci_tx_urb(struct urb *urb, struct vhci_device *vdev)
{
 struct vhci_priv *priv;
 struct vhci_hcd *vhci_hcd = vdev_to_vhci_hcd(vdev);
 unsigned long flags;

 priv = kzalloc(sizeof(struct vhci_priv), GFP_ATOMIC);
 if (!priv) {
  usbip_event_add(&vdev->ud, VDEV_EVENT_ERROR_MALLOC);
  return;
 }

 spin_lock_irqsave(&vdev->priv_lock, flags);

 priv->seqnum = atomic_inc_return(&vhci_hcd->seqnum);
 if (priv->seqnum == 0xffff)
  dev_info(&urb->dev->dev, "seqnum max\n");

 priv->vdev = vdev;
 priv->urb = urb;

 urb->hcpriv = (void *) priv;

 list_add_tail(&priv->list, &vdev->priv_tx);

 wake_up(&vdev->waitq_tx);
 spin_unlock_irqrestore(&vdev->priv_lock, flags);
}
