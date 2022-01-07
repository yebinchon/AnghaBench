
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {int dummy; } ;
struct urb_priv {int num_of_tds; struct urb_priv* tds; } ;
struct urb {int transfer_buffer_length; int transfer_flags; int number_of_packets; struct urb_priv* hcpriv; scalar_t__ error_count; scalar_t__ actual_length; int status; TYPE_1__* iso_frame_desc; int dev; int pipe; } ;
struct fhci_hcd {int lock; } ;
typedef int gfp_t ;
struct TYPE_2__ {int status; int actual_length; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int EXDEV ;




 int URB_ZERO_PACKET ;
 int fhci_queue_urb (struct fhci_hcd*,struct urb*) ;
 struct fhci_hcd* hcd_to_fhci (struct usb_hcd*) ;
 struct urb_priv* kcalloc (int,int,int ) ;
 int kfree (struct urb_priv*) ;
 struct urb_priv* kzalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_link_urb_to_ep (struct usb_hcd*,struct urb*) ;
 int usb_maxpacket (int ,int ,int ) ;
 int usb_pipeout (int ) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static int fhci_urb_enqueue(struct usb_hcd *hcd, struct urb *urb,
       gfp_t mem_flags)
{
 struct fhci_hcd *fhci = hcd_to_fhci(hcd);
 u32 pipe = urb->pipe;
 int ret;
 int i;
 int size = 0;
 struct urb_priv *urb_priv;
 unsigned long flags;

 switch (usb_pipetype(pipe)) {
 case 130:

  size = 2;
 case 131:

  size += urb->transfer_buffer_length / 4096;

  if ((urb->transfer_buffer_length % 4096) != 0)
   size++;

  if (size == 0)
   size++;
  else if ((urb->transfer_flags & URB_ZERO_PACKET) != 0
    && (urb->transfer_buffer_length
        % usb_maxpacket(urb->dev, pipe,
          usb_pipeout(pipe))) != 0)
   size++;
  break;
 case 128:
  size = urb->number_of_packets;
  if (size <= 0)
   return -EINVAL;
  for (i = 0; i < urb->number_of_packets; i++) {
   urb->iso_frame_desc[i].actual_length = 0;
   urb->iso_frame_desc[i].status = (u32) (-EXDEV);
  }
  break;
 case 129:
  size = 1;
 }


 urb_priv = kzalloc(sizeof(*urb_priv), mem_flags);
 if (!urb_priv)
  return -ENOMEM;


 urb_priv->tds = kcalloc(size, sizeof(*urb_priv->tds), mem_flags);
 if (!urb_priv->tds) {
  kfree(urb_priv);
  return -ENOMEM;
 }

 spin_lock_irqsave(&fhci->lock, flags);

 ret = usb_hcd_link_urb_to_ep(hcd, urb);
 if (ret)
  goto err;


 urb_priv->num_of_tds = size;

 urb->status = -EINPROGRESS;
 urb->actual_length = 0;
 urb->error_count = 0;
 urb->hcpriv = urb_priv;

 fhci_queue_urb(fhci, urb);
err:
 if (ret) {
  kfree(urb_priv->tds);
  kfree(urb_priv);
 }
 spin_unlock_irqrestore(&fhci->lock, flags);
 return ret;
}
