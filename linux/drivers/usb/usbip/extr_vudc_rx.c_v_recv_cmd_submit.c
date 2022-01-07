
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int dev; } ;
struct vudc {int lock; int urb_queue; int ud; TYPE_3__ gadget; TYPE_1__* pdev; } ;
struct TYPE_13__ {unsigned int transfer_buffer_length; unsigned int number_of_packets; } ;
struct TYPE_14__ {TYPE_4__ cmd_submit; } ;
struct TYPE_11__ {scalar_t__ direction; int seqnum; int ep; } ;
struct usbip_header {TYPE_5__ u; TYPE_2__ base; } ;
struct urbp {int type; int new; int urb_entry; TYPE_7__* urb; TYPE_6__* ep; int seqnum; } ;
struct TYPE_16__ {int pipe; int status; } ;
struct TYPE_15__ {int type; int desc; } ;
struct TYPE_10__ {int dev; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EINPROGRESS ;
 int EMSGSIZE ;
 int ENOMEM ;
 int EPIPE ;
 int PIPE_BULK ;
 int PIPE_CONTROL ;
 int PIPE_INTERRUPT ;
 int PIPE_ISOCHRONOUS ;
 scalar_t__ USBIP_DIR_IN ;
 int USB_DIR_IN ;




 int VUDC_EVENT_ERROR_MALLOC ;
 int VUDC_EVENT_ERROR_TCP ;
 int alloc_urb_from_cmd (TYPE_7__**,struct usbip_header*,int) ;
 struct urbp* alloc_urbp () ;
 int dev_err (int *,char*,...) ;
 int free_urbp_and_urb (struct urbp*) ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int usb_endpoint_maxp (int ) ;
 unsigned int usb_endpoint_maxp_mult (int ) ;
 int usbip_event_add (int *,int ) ;
 int usbip_recv_iso (int *,TYPE_7__*) ;
 int usbip_recv_xbuff (int *,TYPE_7__*) ;
 int v_kick_timer (struct vudc*,int ) ;
 TYPE_6__* vudc_find_endpoint (struct vudc*,int ) ;

__attribute__((used)) static int v_recv_cmd_submit(struct vudc *udc,
     struct usbip_header *pdu)
{
 int ret = 0;
 struct urbp *urb_p;
 u8 address;
 unsigned long flags;

 urb_p = alloc_urbp();
 if (!urb_p) {
  usbip_event_add(&udc->ud, VUDC_EVENT_ERROR_MALLOC);
  return -ENOMEM;
 }


 address = pdu->base.ep;
 if (pdu->base.direction == USBIP_DIR_IN)
  address |= USB_DIR_IN;

 spin_lock_irq(&udc->lock);
 urb_p->ep = vudc_find_endpoint(udc, address);
 if (!urb_p->ep) {

  dev_err(&udc->pdev->dev, "request to nonexistent endpoint");
  spin_unlock_irq(&udc->lock);
  usbip_event_add(&udc->ud, VUDC_EVENT_ERROR_TCP);
  ret = -EPIPE;
  goto free_urbp;
 }
 urb_p->type = urb_p->ep->type;
 spin_unlock_irq(&udc->lock);

 urb_p->new = 1;
 urb_p->seqnum = pdu->base.seqnum;

 if (urb_p->ep->type == 128) {

  unsigned int maxp, packets, bytes;

  maxp = usb_endpoint_maxp(urb_p->ep->desc);
  maxp *= usb_endpoint_maxp_mult(urb_p->ep->desc);
  bytes = pdu->u.cmd_submit.transfer_buffer_length;
  packets = DIV_ROUND_UP(bytes, maxp);

  if (pdu->u.cmd_submit.number_of_packets < 0 ||
      pdu->u.cmd_submit.number_of_packets > packets) {
   dev_err(&udc->gadget.dev,
    "CMD_SUBMIT: isoc invalid num packets %d\n",
    pdu->u.cmd_submit.number_of_packets);
   ret = -EMSGSIZE;
   goto free_urbp;
  }
 }

 ret = alloc_urb_from_cmd(&urb_p->urb, pdu, urb_p->ep->type);
 if (ret) {
  usbip_event_add(&udc->ud, VUDC_EVENT_ERROR_MALLOC);
  ret = -ENOMEM;
  goto free_urbp;
 }

 urb_p->urb->status = -EINPROGRESS;


 urb_p->urb->pipe &= ~(3 << 30);
 switch (urb_p->ep->type) {
 case 131:
  urb_p->urb->pipe |= (PIPE_BULK << 30);
  break;
 case 129:
  urb_p->urb->pipe |= (PIPE_INTERRUPT << 30);
  break;
 case 130:
  urb_p->urb->pipe |= (PIPE_CONTROL << 30);
  break;
 case 128:
  urb_p->urb->pipe |= (PIPE_ISOCHRONOUS << 30);
  break;
 }
 ret = usbip_recv_xbuff(&udc->ud, urb_p->urb);
 if (ret < 0)
  goto free_urbp;

 ret = usbip_recv_iso(&udc->ud, urb_p->urb);
 if (ret < 0)
  goto free_urbp;

 spin_lock_irqsave(&udc->lock, flags);
 v_kick_timer(udc, jiffies);
 list_add_tail(&urb_p->urb_entry, &udc->urb_queue);
 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;

free_urbp:
 free_urbp_and_urb(urb_p);
 return ret;
}
