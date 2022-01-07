
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhci_hcd {int seqnum; struct vhci* vhci; } ;
struct usbip_device {int dummy; } ;
struct vhci_device {int priv_lock; struct usbip_device ud; } ;
struct vhci {int lock; } ;
struct TYPE_2__ {int seqnum; } ;
struct usbip_header {TYPE_1__ base; } ;
struct urb {int status; int transfer_flags; scalar_t__ num_sgs; } ;


 int URB_DMA_MAP_SG ;
 int USBIP_RET_SUBMIT ;
 int VDEV_EVENT_ERROR_TCP ;
 int atomic_read (int *) ;
 struct urb* pickup_urb_and_free_priv (struct vhci_device*,int ) ;
 int pr_err (char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_giveback_urb (int ,struct urb*,int ) ;
 int usb_hcd_unlink_urb_from_ep (int ,struct urb*) ;
 scalar_t__ usbip_dbg_flag_vhci_rx ;
 int usbip_dbg_vhci_rx (char*,...) ;
 int usbip_dump_urb (struct urb*) ;
 int usbip_event_add (struct usbip_device*,int ) ;
 int usbip_pack_pdu (struct usbip_header*,struct urb*,int ,int ) ;
 int usbip_pad_iso (struct usbip_device*,struct urb*) ;
 scalar_t__ usbip_recv_iso (struct usbip_device*,struct urb*) ;
 scalar_t__ usbip_recv_xbuff (struct usbip_device*,struct urb*) ;
 struct vhci_hcd* vdev_to_vhci_hcd (struct vhci_device*) ;
 int vhci_hcd_to_hcd (struct vhci_hcd*) ;

__attribute__((used)) static void vhci_recv_ret_submit(struct vhci_device *vdev,
     struct usbip_header *pdu)
{
 struct vhci_hcd *vhci_hcd = vdev_to_vhci_hcd(vdev);
 struct vhci *vhci = vhci_hcd->vhci;
 struct usbip_device *ud = &vdev->ud;
 struct urb *urb;
 unsigned long flags;

 spin_lock_irqsave(&vdev->priv_lock, flags);
 urb = pickup_urb_and_free_priv(vdev, pdu->base.seqnum);
 spin_unlock_irqrestore(&vdev->priv_lock, flags);

 if (!urb) {
  pr_err("cannot find a urb of seqnum %u max seqnum %d\n",
   pdu->base.seqnum,
   atomic_read(&vhci_hcd->seqnum));
  usbip_event_add(ud, VDEV_EVENT_ERROR_TCP);
  return;
 }


 usbip_pack_pdu(pdu, urb, USBIP_RET_SUBMIT, 0);


 if (usbip_recv_xbuff(ud, urb) < 0)
  return;


 if (usbip_recv_iso(ud, urb) < 0)
  return;


 usbip_pad_iso(ud, urb);

 if (usbip_dbg_flag_vhci_rx)
  usbip_dump_urb(urb);

 if (urb->num_sgs)
  urb->transfer_flags &= ~URB_DMA_MAP_SG;

 usbip_dbg_vhci_rx("now giveback urb %u\n", pdu->base.seqnum);

 spin_lock_irqsave(&vhci->lock, flags);
 usb_hcd_unlink_urb_from_ep(vhci_hcd_to_hcd(vhci_hcd), urb);
 spin_unlock_irqrestore(&vhci->lock, flags);

 usb_hcd_giveback_urb(vhci_hcd_to_hcd(vhci_hcd), urb, urb->status);

 usbip_dbg_vhci_rx("Leave\n");
}
