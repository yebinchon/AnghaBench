
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct vhci_hcd {struct vhci_device* vdev; struct vhci* vhci; } ;
struct TYPE_3__ {scalar_t__ status; int lock; } ;
struct vhci_device {void* udev; TYPE_1__ ud; int rhport; } ;
struct vhci {int lock; } ;
struct usb_hcd {int dummy; } ;
struct usb_ctrlrequest {int bRequest; int wValue; } ;
struct urb {int status; TYPE_2__* dev; scalar_t__ setup_packet; int pipe; scalar_t__ transfer_buffer_length; int num_sgs; int transfer_buffer; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ __u8 ;
struct TYPE_4__ {int portnum; struct device dev; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ PIPE_CONTROL ;
 int USB_DT_DEVICE ;


 scalar_t__ VDEV_ST_ERROR ;
 scalar_t__ VDEV_ST_NULL ;
 scalar_t__ VDEV_ST_USED ;
 int VHCI_HC_PORTS ;
 int cpu_to_le16 (int) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int ) ;
 struct vhci_hcd* hcd_to_vhci_hcd (struct usb_hcd*) ;
 int pr_err (char*,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* usb_get_dev (TYPE_2__*) ;
 int usb_hcd_giveback_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_hcd_link_urb_to_ep (struct usb_hcd*,struct urb*) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;
 scalar_t__ usb_pipedevice (int ) ;
 scalar_t__ usb_pipetype (int ) ;
 int usb_put_dev (void*) ;
 int usbip_dbg_vhci_hc (char*) ;
 int vhci_tx_urb (struct urb*,struct vhci_device*) ;

__attribute__((used)) static int vhci_urb_enqueue(struct usb_hcd *hcd, struct urb *urb, gfp_t mem_flags)
{
 struct vhci_hcd *vhci_hcd = hcd_to_vhci_hcd(hcd);
 struct vhci *vhci = vhci_hcd->vhci;
 struct device *dev = &urb->dev->dev;
 u8 portnum = urb->dev->portnum;
 int ret = 0;
 struct vhci_device *vdev;
 unsigned long flags;

 if (portnum > VHCI_HC_PORTS) {
  pr_err("invalid port number %d\n", portnum);
  return -ENODEV;
 }
 vdev = &vhci_hcd->vdev[portnum-1];

 if (!urb->transfer_buffer && !urb->num_sgs &&
      urb->transfer_buffer_length) {
  dev_dbg(dev, "Null URB transfer buffer\n");
  return -EINVAL;
 }

 spin_lock_irqsave(&vhci->lock, flags);

 if (urb->status != -EINPROGRESS) {
  dev_err(dev, "URB already unlinked!, status %d\n", urb->status);
  spin_unlock_irqrestore(&vhci->lock, flags);
  return urb->status;
 }


 spin_lock(&vdev->ud.lock);
 if (vdev->ud.status == VDEV_ST_NULL ||
     vdev->ud.status == VDEV_ST_ERROR) {
  dev_err(dev, "enqueue for inactive port %d\n", vdev->rhport);
  spin_unlock(&vdev->ud.lock);
  spin_unlock_irqrestore(&vhci->lock, flags);
  return -ENODEV;
 }
 spin_unlock(&vdev->ud.lock);

 ret = usb_hcd_link_urb_to_ep(hcd, urb);
 if (ret)
  goto no_need_unlink;
 if (usb_pipedevice(urb->pipe) == 0) {
  __u8 type = usb_pipetype(urb->pipe);
  struct usb_ctrlrequest *ctrlreq =
   (struct usb_ctrlrequest *) urb->setup_packet;

  if (type != PIPE_CONTROL || !ctrlreq) {
   dev_err(dev, "invalid request to devnum 0\n");
   ret = -EINVAL;
   goto no_need_xmit;
  }

  switch (ctrlreq->bRequest) {
  case 128:

   dev_info(dev, "SetAddress Request (%d) to port %d\n",
     ctrlreq->wValue, vdev->rhport);

   usb_put_dev(vdev->udev);
   vdev->udev = usb_get_dev(urb->dev);

   spin_lock(&vdev->ud.lock);
   vdev->ud.status = VDEV_ST_USED;
   spin_unlock(&vdev->ud.lock);

   if (urb->status == -EINPROGRESS) {


    urb->status = 0;
   }

   goto no_need_xmit;

  case 129:
   if (ctrlreq->wValue == cpu_to_le16(USB_DT_DEVICE << 8))
    usbip_dbg_vhci_hc(
     "Not yet?:Get_Descriptor to device 0 (get max pipe size)\n");

   usb_put_dev(vdev->udev);
   vdev->udev = usb_get_dev(urb->dev);
   goto out;

  default:

   dev_err(dev,
    "invalid request to devnum 0 bRequest %u, wValue %u\n",
    ctrlreq->bRequest,
    ctrlreq->wValue);
   ret = -EINVAL;
   goto no_need_xmit;
  }

 }

out:
 vhci_tx_urb(urb, vdev);
 spin_unlock_irqrestore(&vhci->lock, flags);

 return 0;

no_need_xmit:
 usb_hcd_unlink_urb_from_ep(hcd, urb);
no_need_unlink:
 spin_unlock_irqrestore(&vhci->lock, flags);
 if (!ret)
  usb_hcd_giveback_urb(hcd, urb, urb->status);
 return ret;
}
