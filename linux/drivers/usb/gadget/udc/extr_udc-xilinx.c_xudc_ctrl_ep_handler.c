
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xusb_udc {int dummy; } ;


 int XUSB_STATUS_FIFO_BUFF_FREE_MASK ;
 int XUSB_STATUS_FIFO_BUFF_RDY_MASK ;
 int XUSB_STATUS_SETUP_PACKET_MASK ;
 int xudc_ep0_in (struct xusb_udc*) ;
 int xudc_ep0_out (struct xusb_udc*) ;
 int xudc_handle_setup (struct xusb_udc*) ;

__attribute__((used)) static void xudc_ctrl_ep_handler(struct xusb_udc *udc, u32 intrstatus)
{

 if (intrstatus & XUSB_STATUS_SETUP_PACKET_MASK) {
  xudc_handle_setup(udc);
 } else {
  if (intrstatus & XUSB_STATUS_FIFO_BUFF_RDY_MASK)
   xudc_ep0_out(udc);
  else if (intrstatus & XUSB_STATUS_FIFO_BUFF_FREE_MASK)
   xudc_ep0_in(udc);
 }
}
