
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type_control; int type_iso; int type_bulk; int type_int; int dir_in; int dir_out; } ;
struct TYPE_8__ {int ep_list; TYPE_1__ caps; int * ops; int name; } ;
struct TYPE_6__ {int * ptr; int dma; int queue; } ;
struct ci_hw_ep {TYPE_4__ ep; TYPE_2__ qh; int name; int td_pool; int * lock; struct ci_hdrc* ci; } ;
struct TYPE_7__ {int ep_list; } ;
struct ci_hdrc {int hw_ep_max; TYPE_3__ gadget; struct ci_hw_ep* ep0in; struct ci_hw_ep* ep0out; int qh_pool; int td_pool; int lock; struct ci_hw_ep* ci_hw_ep; } ;


 unsigned short CTRL_PAYLOAD_MAX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RX ;
 int TX ;
 int * dma_pool_zalloc (int ,int ,int *) ;
 int list_add_tail (int *,int *) ;
 int scnprintf (int ,int,char*,int,char*) ;
 int usb_ep_ops ;
 int usb_ep_set_maxpacket_limit (TYPE_4__*,unsigned short) ;

__attribute__((used)) static int init_eps(struct ci_hdrc *ci)
{
 int retval = 0, i, j;

 for (i = 0; i < ci->hw_ep_max/2; i++)
  for (j = RX; j <= TX; j++) {
   int k = i + j * ci->hw_ep_max/2;
   struct ci_hw_ep *hwep = &ci->ci_hw_ep[k];

   scnprintf(hwep->name, sizeof(hwep->name), "ep%i%s", i,
     (j == TX) ? "in" : "out");

   hwep->ci = ci;
   hwep->lock = &ci->lock;
   hwep->td_pool = ci->td_pool;

   hwep->ep.name = hwep->name;
   hwep->ep.ops = &usb_ep_ops;

   if (i == 0) {
    hwep->ep.caps.type_control = 1;
   } else {
    hwep->ep.caps.type_iso = 1;
    hwep->ep.caps.type_bulk = 1;
    hwep->ep.caps.type_int = 1;
   }

   if (j == TX)
    hwep->ep.caps.dir_in = 1;
   else
    hwep->ep.caps.dir_out = 1;






   usb_ep_set_maxpacket_limit(&hwep->ep, (unsigned short)~0);

   INIT_LIST_HEAD(&hwep->qh.queue);
   hwep->qh.ptr = dma_pool_zalloc(ci->qh_pool, GFP_KERNEL,
             &hwep->qh.dma);
   if (hwep->qh.ptr == ((void*)0))
    retval = -ENOMEM;





   if (i == 0) {
    if (j == RX)
     ci->ep0out = hwep;
    else
     ci->ep0in = hwep;

    usb_ep_set_maxpacket_limit(&hwep->ep, CTRL_PAYLOAD_MAX);
    continue;
   }

   list_add_tail(&hwep->ep.ep_list, &ci->gadget.ep_list);
  }

 return retval;
}
