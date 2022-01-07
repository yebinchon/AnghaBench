
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u16 ;
struct TYPE_5__ {int type_control; int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_7__ {int* name; int ep_list; int * ops; TYPE_1__ caps; } ;
struct omap_ep {int* name; int bEndpointAddress; int bmAttributes; int double_buf; unsigned int maxpacket; TYPE_3__ ep; TYPE_4__* udc; int iso; int queue; int timer; } ;
struct TYPE_6__ {int ep_list; } ;
struct TYPE_8__ {TYPE_2__ gadget; struct omap_ep* ep; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int DBG (char*,char*,int,unsigned int,unsigned int,char*,unsigned int) ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int UDC_EPN_RX_DB ;
 unsigned int UDC_EPN_RX_ISO ;
 unsigned int UDC_EPN_RX_VALID ;
 int UDC_EP_RX (int) ;
 int UDC_EP_TX (int) ;
 int USB_DIR_IN ;




 scalar_t__ cpu_is_omap15xx () ;
 int list_add_tail (int *,int *) ;
 int omap_ep_ops ;
 int omap_writew (unsigned int,int ) ;
 int pio_out_timer ;
 int strlcpy (int*,char*,int) ;
 int strlen (char*) ;
 int timer_setup (int *,int ,int ) ;
 TYPE_4__* udc ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,unsigned int) ;
 int use_dma ;

__attribute__((used)) static unsigned
omap_ep_setup(char *name, u8 addr, u8 type,
  unsigned buf, unsigned maxp, int dbuf)
{
 struct omap_ep *ep;
 u16 epn_rxtx = 0;


 ep = &udc->ep[addr & 0xf];
 if (addr & USB_DIR_IN)
  ep += 16;


 BUG_ON(ep->name[0]);


 if (type == 128) {
  switch (maxp) {
  case 8:
   epn_rxtx = 0 << 12;
   break;
  case 16:
   epn_rxtx = 1 << 12;
   break;
  case 32:
   epn_rxtx = 2 << 12;
   break;
  case 64:
   epn_rxtx = 3 << 12;
   break;
  case 128:
   epn_rxtx = 4 << 12;
   break;
  case 256:
   epn_rxtx = 5 << 12;
   break;
  case 512:
   epn_rxtx = 6 << 12;
   break;
  default:
   BUG();
  }
  epn_rxtx |= UDC_EPN_RX_ISO;
  dbuf = 1;
 } else {




  if (!use_dma || cpu_is_omap15xx())
   dbuf = 0;

  switch (maxp) {
  case 8:
   epn_rxtx = 0 << 12;
   break;
  case 16:
   epn_rxtx = 1 << 12;
   break;
  case 32:
   epn_rxtx = 2 << 12;
   break;
  case 64:
   epn_rxtx = 3 << 12;
   break;
  default:
   BUG();
  }
  if (dbuf && addr)
   epn_rxtx |= UDC_EPN_RX_DB;
  timer_setup(&ep->timer, pio_out_timer, 0);
 }
 if (addr)
  epn_rxtx |= UDC_EPN_RX_VALID;
 BUG_ON(buf & 0x07);
 epn_rxtx |= buf >> 3;

 DBG("%s addr %02x rxtx %04x maxp %d%s buf %d\n",
  name, addr, epn_rxtx, maxp, dbuf ? "x2" : "", buf);

 if (addr & USB_DIR_IN)
  omap_writew(epn_rxtx, UDC_EP_TX(addr & 0xf));
 else
  omap_writew(epn_rxtx, UDC_EP_RX(addr));


 buf += maxp;
 if (dbuf)
  buf += maxp;
 BUG_ON(buf > 2048);


 BUG_ON(strlen(name) >= sizeof ep->name);
 strlcpy(ep->name, name, sizeof ep->name);
 INIT_LIST_HEAD(&ep->queue);
 INIT_LIST_HEAD(&ep->iso);
 ep->bEndpointAddress = addr;
 ep->bmAttributes = type;
 ep->double_buf = dbuf;
 ep->udc = udc;

 switch (type) {
 case 130:
  ep->ep.caps.type_control = 1;
  ep->ep.caps.dir_in = 1;
  ep->ep.caps.dir_out = 1;
  break;
 case 128:
  ep->ep.caps.type_iso = 1;
  break;
 case 131:
  ep->ep.caps.type_bulk = 1;
  break;
 case 129:
  ep->ep.caps.type_int = 1;
  break;
 };

 if (addr & USB_DIR_IN)
  ep->ep.caps.dir_in = 1;
 else
  ep->ep.caps.dir_out = 1;

 ep->ep.name = ep->name;
 ep->ep.ops = &omap_ep_ops;
 ep->maxpacket = maxp;
 usb_ep_set_maxpacket_limit(&ep->ep, ep->maxpacket);
 list_add_tail(&ep->ep.ep_list, &udc->gadget.ep_list);

 return buf;
}
