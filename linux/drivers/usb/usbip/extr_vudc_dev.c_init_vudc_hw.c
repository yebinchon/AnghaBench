
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ep_list; TYPE_4__* ep0; } ;
struct TYPE_7__ {int unusable; int reset; int shutdown; } ;
struct usbip_device {TYPE_3__ eh_ops; int side; int status; int lock; } ;
struct vudc {int tx_waitq; int tx_queue; int urb_queue; int lock_tx; int lock; TYPE_2__ gadget; struct vep* ep; struct usbip_device ud; } ;
struct TYPE_5__ {int type_control; int dir_out; int dir_in; int type_iso; int type_int; int type_bulk; } ;
struct TYPE_8__ {int max_streams; int ep_list; TYPE_1__ caps; int * ops; int name; } ;
struct vep {TYPE_4__ ep; int req_queue; TYPE_2__* gadget; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SDEV_ST_AVAILABLE ;
 int USBIP_VUDC ;
 int VIRTUAL_ENDPOINTS ;
 int init_waitqueue_head (int *) ;
 struct vep* kcalloc (int,int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int,char*) ;
 int usb_ep_set_maxpacket_limit (TYPE_4__*,int ) ;
 int v_init_timer (struct vudc*) ;
 int vep_ops ;
 int vudc_device_reset ;
 int vudc_device_unusable ;
 int vudc_shutdown ;

__attribute__((used)) static int init_vudc_hw(struct vudc *udc)
{
 int i;
 struct usbip_device *ud = &udc->ud;
 struct vep *ep;

 udc->ep = kcalloc(VIRTUAL_ENDPOINTS, sizeof(*udc->ep), GFP_KERNEL);
 if (!udc->ep)
  goto nomem_ep;

 INIT_LIST_HEAD(&udc->gadget.ep_list);


 for (i = 0; i < VIRTUAL_ENDPOINTS; ++i) {
  int is_out = i % 2;
  int num = (i + 1) / 2;

  ep = &udc->ep[i];

  sprintf(ep->name, "ep%d%s", num,
   i ? (is_out ? "out" : "in") : "");
  ep->ep.name = ep->name;

  ep->ep.ops = &vep_ops;

  usb_ep_set_maxpacket_limit(&ep->ep, ~0);
  ep->ep.max_streams = 16;
  ep->gadget = &udc->gadget;
  INIT_LIST_HEAD(&ep->req_queue);

  if (i == 0) {

   ep->ep.caps.type_control = 1;
   ep->ep.caps.dir_out = 1;
   ep->ep.caps.dir_in = 1;

   udc->gadget.ep0 = &ep->ep;
  } else {

   ep->ep.caps.type_iso = 1;
   ep->ep.caps.type_int = 1;
   ep->ep.caps.type_bulk = 1;

   if (is_out)
    ep->ep.caps.dir_out = 1;
   else
    ep->ep.caps.dir_in = 1;

   list_add_tail(&ep->ep.ep_list, &udc->gadget.ep_list);
  }
 }

 spin_lock_init(&udc->lock);
 spin_lock_init(&udc->lock_tx);
 INIT_LIST_HEAD(&udc->urb_queue);
 INIT_LIST_HEAD(&udc->tx_queue);
 init_waitqueue_head(&udc->tx_waitq);

 spin_lock_init(&ud->lock);
 ud->status = SDEV_ST_AVAILABLE;
 ud->side = USBIP_VUDC;

 ud->eh_ops.shutdown = vudc_shutdown;
 ud->eh_ops.reset = vudc_device_reset;
 ud->eh_ops.unusable = vudc_device_unusable;

 v_init_timer(udc);
 return 0;

nomem_ep:
  return -ENOMEM;
}
