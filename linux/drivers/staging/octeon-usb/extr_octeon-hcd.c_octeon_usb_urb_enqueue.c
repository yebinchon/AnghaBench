
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int wMaxPacketSize; } ;
struct usb_host_endpoint {struct cvmx_usb_pipe* hcpriv; TYPE_2__ desc; } ;
struct TYPE_4__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_device {int speed; int devnum; int portnum; struct usb_device* parent; } ;
struct urb {int number_of_packets; char* setup_packet; struct cvmx_usb_transaction* hcpriv; int pipe; TYPE_3__* iso_frame_desc; int interval; struct usb_device* dev; scalar_t__ status; struct usb_host_endpoint* ep; } ;
struct octeon_hcd {int lock; } ;
struct device {int dummy; } ;
struct cvmx_usb_transaction {int dummy; } ;
struct cvmx_usb_pipe {int dummy; } ;
struct cvmx_usb_iso_packet {int status; int length; int offset; } ;
typedef int gfp_t ;
typedef enum cvmx_usb_transfer { ____Placeholder_cvmx_usb_transfer } cvmx_usb_transfer ;
typedef enum cvmx_usb_speed { ____Placeholder_cvmx_usb_speed } cvmx_usb_speed ;
struct TYPE_6__ {int length; int offset; } ;


 int CVMX_USB_DIRECTION_IN ;
 int CVMX_USB_DIRECTION_OUT ;
 int CVMX_USB_SPEED_FULL ;
 int CVMX_USB_SPEED_HIGH ;
 int CVMX_USB_SPEED_LOW ;
 int CVMX_USB_STATUS_ERROR ;
 int CVMX_USB_TRANSFER_BULK ;
 int CVMX_USB_TRANSFER_CONTROL ;
 int CVMX_USB_TRANSFER_INTERRUPT ;
 int CVMX_USB_TRANSFER_ISOCHRONOUS ;
 int ENOMEM ;
 int GFP_ATOMIC ;





 scalar_t__ USB_SPEED_HIGH ;

 struct cvmx_usb_pipe* cvmx_usb_open_pipe (struct octeon_hcd*,int ,int ,int,int,int,int ,int ,int,int,int) ;
 struct cvmx_usb_transaction* cvmx_usb_submit_bulk (struct octeon_hcd*,struct cvmx_usb_pipe*,struct urb*) ;
 struct cvmx_usb_transaction* cvmx_usb_submit_control (struct octeon_hcd*,struct cvmx_usb_pipe*,struct urb*) ;
 struct cvmx_usb_transaction* cvmx_usb_submit_interrupt (struct octeon_hcd*,struct cvmx_usb_pipe*,struct urb*) ;
 struct cvmx_usb_transaction* cvmx_usb_submit_isochronous (struct octeon_hcd*,struct cvmx_usb_pipe*,struct urb*) ;
 int dev_dbg (struct device*,char*,...) ;
 struct octeon_hcd* hcd_to_octeon (struct usb_hcd*) ;
 int kfree (struct cvmx_usb_iso_packet*) ;
 struct cvmx_usb_iso_packet* kmalloc_array (int,int,int ) ;
 int le16_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_link_urb_to_ep (struct usb_hcd*,struct urb*) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;
 int usb_pipedevice (int ) ;
 int usb_pipeendpoint (int ) ;
 scalar_t__ usb_pipein (int ) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static int octeon_usb_urb_enqueue(struct usb_hcd *hcd,
      struct urb *urb,
      gfp_t mem_flags)
{
 struct octeon_hcd *usb = hcd_to_octeon(hcd);
 struct device *dev = hcd->self.controller;
 struct cvmx_usb_transaction *transaction = ((void*)0);
 struct cvmx_usb_pipe *pipe;
 unsigned long flags;
 struct cvmx_usb_iso_packet *iso_packet;
 struct usb_host_endpoint *ep = urb->ep;
 int rc;

 urb->status = 0;
 spin_lock_irqsave(&usb->lock, flags);

 rc = usb_hcd_link_urb_to_ep(hcd, urb);
 if (rc) {
  spin_unlock_irqrestore(&usb->lock, flags);
  return rc;
 }

 if (!ep->hcpriv) {
  enum cvmx_usb_transfer transfer_type;
  enum cvmx_usb_speed speed;
  int split_device = 0;
  int split_port = 0;

  switch (usb_pipetype(urb->pipe)) {
  case 130:
   transfer_type = CVMX_USB_TRANSFER_ISOCHRONOUS;
   break;
  case 131:
   transfer_type = CVMX_USB_TRANSFER_INTERRUPT;
   break;
  case 132:
   transfer_type = CVMX_USB_TRANSFER_CONTROL;
   break;
  default:
   transfer_type = CVMX_USB_TRANSFER_BULK;
   break;
  }
  switch (urb->dev->speed) {
  case 128:
   speed = CVMX_USB_SPEED_LOW;
   break;
  case 129:
   speed = CVMX_USB_SPEED_FULL;
   break;
  default:
   speed = CVMX_USB_SPEED_HIGH;
   break;
  }





  if (speed != CVMX_USB_SPEED_HIGH) {




   struct usb_device *dev = urb->dev;

   while (dev->parent) {




    if (dev->parent->speed == USB_SPEED_HIGH) {
     split_device = dev->parent->devnum;
     split_port = dev->portnum;
     break;
    }






    dev = dev->parent;
   }
  }
  pipe = cvmx_usb_open_pipe(usb, usb_pipedevice(urb->pipe),
       usb_pipeendpoint(urb->pipe), speed,
       le16_to_cpu(ep->desc.wMaxPacketSize)
       & 0x7ff,
       transfer_type,
       usb_pipein(urb->pipe) ?
      CVMX_USB_DIRECTION_IN :
      CVMX_USB_DIRECTION_OUT,
       urb->interval,
       (le16_to_cpu(ep->desc.wMaxPacketSize)
        >> 11) & 0x3,
       split_device, split_port);
  if (!pipe) {
   usb_hcd_unlink_urb_from_ep(hcd, urb);
   spin_unlock_irqrestore(&usb->lock, flags);
   dev_dbg(dev, "Failed to create pipe\n");
   return -ENOMEM;
  }
  ep->hcpriv = pipe;
 } else {
  pipe = ep->hcpriv;
 }

 switch (usb_pipetype(urb->pipe)) {
 case 130:
  dev_dbg(dev, "Submit isochronous to %d.%d\n",
   usb_pipedevice(urb->pipe),
   usb_pipeendpoint(urb->pipe));




  iso_packet = kmalloc_array(urb->number_of_packets,
        sizeof(struct cvmx_usb_iso_packet),
        GFP_ATOMIC);
  if (iso_packet) {
   int i;

   for (i = 0; i < urb->number_of_packets; i++) {
    iso_packet[i].offset =
     urb->iso_frame_desc[i].offset;
    iso_packet[i].length =
     urb->iso_frame_desc[i].length;
    iso_packet[i].status = CVMX_USB_STATUS_ERROR;
   }





   urb->setup_packet = (char *)iso_packet;
   transaction = cvmx_usb_submit_isochronous(usb,
          pipe, urb);




   if (!transaction) {
    urb->setup_packet = ((void*)0);
    kfree(iso_packet);
   }
  }
  break;
 case 131:
  dev_dbg(dev, "Submit interrupt to %d.%d\n",
   usb_pipedevice(urb->pipe),
   usb_pipeendpoint(urb->pipe));
  transaction = cvmx_usb_submit_interrupt(usb, pipe, urb);
  break;
 case 132:
  dev_dbg(dev, "Submit control to %d.%d\n",
   usb_pipedevice(urb->pipe),
   usb_pipeendpoint(urb->pipe));
  transaction = cvmx_usb_submit_control(usb, pipe, urb);
  break;
 case 133:
  dev_dbg(dev, "Submit bulk to %d.%d\n",
   usb_pipedevice(urb->pipe),
   usb_pipeendpoint(urb->pipe));
  transaction = cvmx_usb_submit_bulk(usb, pipe, urb);
  break;
 }
 if (!transaction) {
  usb_hcd_unlink_urb_from_ep(hcd, urb);
  spin_unlock_irqrestore(&usb->lock, flags);
  dev_dbg(dev, "Failed to submit\n");
  return -ENOMEM;
 }
 urb->hcpriv = transaction;
 spin_unlock_irqrestore(&usb->lock, flags);
 return 0;
}
