
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int type_control; int type_iso; int type_bulk; int type_int; int dir_in; int dir_out; } ;
struct TYPE_8__ {TYPE_3__ caps; int * ops; int name; int ep_list; } ;
struct dwc2_hsotg_ep {int dir_in; int index; TYPE_4__ ep; int name; struct dwc2_hsotg* parent; int queue; } ;
struct TYPE_6__ {scalar_t__ speed; } ;
struct TYPE_5__ {int ep_list; } ;
struct dwc2_hsotg {TYPE_2__ params; TYPE_1__ gadget; } ;


 int DIEPCTL (int) ;
 int DOEPCTL (int) ;
 scalar_t__ DWC2_SPEED_PARAM_LOW ;
 int DXEPCTL_NEXTEP (int) ;
 int EP0_MPS_LIMIT ;
 int INIT_LIST_HEAD (int *) ;
 int dwc2_hsotg_ep_ops ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int snprintf (int ,int,char*,int,char*) ;
 int usb_ep_set_maxpacket_limit (TYPE_4__*,int) ;
 scalar_t__ using_dma (struct dwc2_hsotg*) ;

__attribute__((used)) static void dwc2_hsotg_initep(struct dwc2_hsotg *hsotg,
         struct dwc2_hsotg_ep *hs_ep,
           int epnum,
           bool dir_in)
{
 char *dir;

 if (epnum == 0)
  dir = "";
 else if (dir_in)
  dir = "in";
 else
  dir = "out";

 hs_ep->dir_in = dir_in;
 hs_ep->index = epnum;

 snprintf(hs_ep->name, sizeof(hs_ep->name), "ep%d%s", epnum, dir);

 INIT_LIST_HEAD(&hs_ep->queue);
 INIT_LIST_HEAD(&hs_ep->ep.ep_list);


 if (epnum)
  list_add_tail(&hs_ep->ep.ep_list, &hsotg->gadget.ep_list);

 hs_ep->parent = hsotg;
 hs_ep->ep.name = hs_ep->name;

 if (hsotg->params.speed == DWC2_SPEED_PARAM_LOW)
  usb_ep_set_maxpacket_limit(&hs_ep->ep, 8);
 else
  usb_ep_set_maxpacket_limit(&hs_ep->ep,
        epnum ? 1024 : EP0_MPS_LIMIT);
 hs_ep->ep.ops = &dwc2_hsotg_ep_ops;

 if (epnum == 0) {
  hs_ep->ep.caps.type_control = 1;
 } else {
  if (hsotg->params.speed != DWC2_SPEED_PARAM_LOW) {
   hs_ep->ep.caps.type_iso = 1;
   hs_ep->ep.caps.type_bulk = 1;
  }
  hs_ep->ep.caps.type_int = 1;
 }

 if (dir_in)
  hs_ep->ep.caps.dir_in = 1;
 else
  hs_ep->ep.caps.dir_out = 1;






 if (using_dma(hsotg)) {
  u32 next = DXEPCTL_NEXTEP((epnum + 1) % 15);

  if (dir_in)
   dwc2_writel(hsotg, next, DIEPCTL(epnum));
  else
   dwc2_writel(hsotg, next, DOEPCTL(epnum));
 }
}
