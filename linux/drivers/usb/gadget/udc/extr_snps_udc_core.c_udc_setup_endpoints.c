
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_8__ {int ep_list; int desc; int caps; int name; } ;
struct udc_ep {size_t num; int in; int naking; scalar_t__ halted; TYPE_3__ ep; TYPE_1__* regs; int * dma; int fifo_depth; int txfifo; struct udc* dev; } ;
struct TYPE_7__ {scalar_t__ speed; TYPE_3__* ep0; } ;
struct udc {scalar_t__ cur_alt; scalar_t__ cur_intf; scalar_t__ cur_config; TYPE_2__ gadget; struct udc_ep* ep; TYPE_4__* regs; TYPE_1__* ep_regs; int txfifo; } ;
struct TYPE_10__ {int caps; int name; } ;
struct TYPE_9__ {int ctl; int sts; } ;
struct TYPE_6__ {int ctl; } ;


 size_t AMD_BIT (int ) ;
 size_t AMD_GETBITS (size_t,int ) ;
 int DBG (struct udc*,char*) ;
 int INIT_LIST_HEAD (int *) ;
 int UDC_DEVSTS_ENUM_SPEED ;
 size_t UDC_DEVSTS_ENUM_SPEED_FULL ;
 size_t UDC_DEVSTS_ENUM_SPEED_HIGH ;
 size_t UDC_EP0IN_IX ;
 int UDC_EP0IN_MAX_PKT_SIZE ;
 size_t UDC_EP0OUT_IX ;
 int UDC_EP0OUT_MAX_PKT_SIZE ;
 int UDC_EPCTL_SNAK ;
 size_t UDC_EPIN_NUM ;
 size_t UDC_EP_NUM ;
 int UDC_FS_EP0IN_MAX_PKT_SIZE ;
 int UDC_FS_EP0OUT_MAX_PKT_SIZE ;
 int UDC_RXFIFO_SIZE ;
 int UDC_TXFIFO_SIZE ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 TYPE_5__* ep_info ;
 int ep_init (TYPE_4__*,struct udc_ep*) ;
 size_t readl (int *) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int ) ;
 scalar_t__ use_dma ;
 int writel (size_t,int *) ;

__attribute__((used)) static void udc_setup_endpoints(struct udc *dev)
{
 struct udc_ep *ep;
 u32 tmp;
 u32 reg;

 DBG(dev, "udc_setup_endpoints()\n");


 tmp = readl(&dev->regs->sts);
 tmp = AMD_GETBITS(tmp, UDC_DEVSTS_ENUM_SPEED);
 if (tmp == UDC_DEVSTS_ENUM_SPEED_HIGH)
  dev->gadget.speed = USB_SPEED_HIGH;
 else if (tmp == UDC_DEVSTS_ENUM_SPEED_FULL)
  dev->gadget.speed = USB_SPEED_FULL;


 for (tmp = 0; tmp < UDC_EP_NUM; tmp++) {
  ep = &dev->ep[tmp];
  ep->dev = dev;
  ep->ep.name = ep_info[tmp].name;
  ep->ep.caps = ep_info[tmp].caps;
  ep->num = tmp;

  ep->txfifo = dev->txfifo;


  if (tmp < UDC_EPIN_NUM) {
   ep->fifo_depth = UDC_TXFIFO_SIZE;
   ep->in = 1;
  } else {
   ep->fifo_depth = UDC_RXFIFO_SIZE;
   ep->in = 0;

  }
  ep->regs = &dev->ep_regs[tmp];





  if (!ep->ep.desc)
   ep_init(dev->regs, ep);

  if (use_dma) {





   ep->dma = &dev->regs->ctl;


   if (tmp != UDC_EP0IN_IX && tmp != UDC_EP0OUT_IX
      && tmp > UDC_EPIN_NUM) {

    reg = readl(&dev->ep[tmp].regs->ctl);
    reg |= AMD_BIT(UDC_EPCTL_SNAK);
    writel(reg, &dev->ep[tmp].regs->ctl);
    dev->ep[tmp].naking = 1;

   }
  }
 }

 if (dev->gadget.speed == USB_SPEED_FULL) {
  usb_ep_set_maxpacket_limit(&dev->ep[UDC_EP0IN_IX].ep,
        UDC_FS_EP0IN_MAX_PKT_SIZE);
  usb_ep_set_maxpacket_limit(&dev->ep[UDC_EP0OUT_IX].ep,
        UDC_FS_EP0OUT_MAX_PKT_SIZE);
 } else if (dev->gadget.speed == USB_SPEED_HIGH) {
  usb_ep_set_maxpacket_limit(&dev->ep[UDC_EP0IN_IX].ep,
        UDC_EP0IN_MAX_PKT_SIZE);
  usb_ep_set_maxpacket_limit(&dev->ep[UDC_EP0OUT_IX].ep,
        UDC_EP0OUT_MAX_PKT_SIZE);
 }





 dev->gadget.ep0 = &dev->ep[UDC_EP0IN_IX].ep;
 dev->ep[UDC_EP0IN_IX].halted = 0;
 INIT_LIST_HEAD(&dev->gadget.ep0->ep_list);


 dev->cur_config = 0;
 dev->cur_intf = 0;
 dev->cur_alt = 0;
}
