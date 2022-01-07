
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int speed; } ;
struct dwc2_hsotg {int num_of_eps; int dev; scalar_t__* eps_out; scalar_t__* eps_in; TYPE_1__ gadget; } ;


 int DIEPCTL0 ;
 int DOEPCTL0 ;
 int DSTS ;




 int DSTS_ENUMSPD_MASK ;
 int DSTS_ENUMSPD_SHIFT ;
 int EP0_MPS_LIMIT ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_LOW ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_info (int ,char*,int ) ;
 int dwc2_hsotg_enqueue_setup (struct dwc2_hsotg*) ;
 int dwc2_hsotg_set_ep_maxpacket (struct dwc2_hsotg*,int,int,int ,int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int usb_speed_string (int ) ;

__attribute__((used)) static void dwc2_hsotg_irq_enumdone(struct dwc2_hsotg *hsotg)
{
 u32 dsts = dwc2_readl(hsotg, DSTS);
 int ep0_mps = 0, ep_mps = 8;







 dev_dbg(hsotg->dev, "EnumDone (DSTS=0x%08x)\n", dsts);
 switch ((dsts & DSTS_ENUMSPD_MASK) >> DSTS_ENUMSPD_SHIFT) {
 case 131:
 case 130:
  hsotg->gadget.speed = USB_SPEED_FULL;
  ep0_mps = EP0_MPS_LIMIT;
  ep_mps = 1023;
  break;

 case 129:
  hsotg->gadget.speed = USB_SPEED_HIGH;
  ep0_mps = EP0_MPS_LIMIT;
  ep_mps = 1024;
  break;

 case 128:
  hsotg->gadget.speed = USB_SPEED_LOW;
  ep0_mps = 8;
  ep_mps = 8;





  break;
 }
 dev_info(hsotg->dev, "new device is %s\n",
   usb_speed_string(hsotg->gadget.speed));






 if (ep0_mps) {
  int i;

  dwc2_hsotg_set_ep_maxpacket(hsotg, 0, ep0_mps, 0, 1);
  dwc2_hsotg_set_ep_maxpacket(hsotg, 0, ep0_mps, 0, 0);
  for (i = 1; i < hsotg->num_of_eps; i++) {
   if (hsotg->eps_in[i])
    dwc2_hsotg_set_ep_maxpacket(hsotg, i, ep_mps,
           0, 1);
   if (hsotg->eps_out[i])
    dwc2_hsotg_set_ep_maxpacket(hsotg, i, ep_mps,
           0, 0);
  }
 }



 dwc2_hsotg_enqueue_setup(hsotg);

 dev_dbg(hsotg->dev, "EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\n",
  dwc2_readl(hsotg, DIEPCTL0),
  dwc2_readl(hsotg, DOEPCTL0));
}
