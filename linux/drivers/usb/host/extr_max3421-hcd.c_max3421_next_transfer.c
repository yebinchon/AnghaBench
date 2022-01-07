
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* ep; } ;
struct max3421_hcd {int hien; struct urb* curr_urb; } ;
struct max3421_ep {int pkt_state; } ;
struct TYPE_2__ {struct max3421_ep* hcpriv; } ;


 int BIT (int ) ;
 int EINVAL ;
 int MAX3421_HI_HXFRDN_BIT ;
 int MAX3421_HXFR_HS_IN ;
 int MAX3421_HXFR_HS_OUT ;
 int MAX3421_REG_HXFR ;



 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int max3421_ctrl_setup (struct usb_hcd*,struct urb*) ;
 int max3421_transfer_in (struct usb_hcd*,struct urb*) ;
 int max3421_transfer_out (struct usb_hcd*,struct urb*,int) ;
 int spi_wr8 (struct usb_hcd*,int ,int) ;
 int usb_urb_dir_in (struct urb*) ;

__attribute__((used)) static void
max3421_next_transfer(struct usb_hcd *hcd, int fast_retransmit)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 struct urb *urb = max3421_hcd->curr_urb;
 struct max3421_ep *max3421_ep;
 int cmd = -EINVAL;

 if (!urb)
  return;

 max3421_ep = urb->ep->hcpriv;

 switch (max3421_ep->pkt_state) {
 case 130:
  cmd = max3421_ctrl_setup(hcd, urb);
  break;

 case 128:
  if (usb_urb_dir_in(urb))
   cmd = max3421_transfer_in(hcd, urb);
  else
   cmd = max3421_transfer_out(hcd, urb, fast_retransmit);
  break;

 case 129:




  if (usb_urb_dir_in(urb))
   cmd = MAX3421_HXFR_HS_OUT;
  else
   cmd = MAX3421_HXFR_HS_IN;
  break;
 }

 if (cmd < 0)
  return;



 spi_wr8(hcd, MAX3421_REG_HXFR, cmd);
 max3421_hcd->hien |= BIT(MAX3421_HI_HXFRDN_BIT);
}
