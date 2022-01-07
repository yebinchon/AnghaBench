
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct musb {int dummy; } ;


 int is_cppi_enabled (struct musb*) ;
 scalar_t__ is_host_active (struct musb*) ;
 int musb_g_ep0_irq (struct musb*) ;
 int musb_g_rx (struct musb*,scalar_t__) ;
 int musb_g_tx (struct musb*,scalar_t__) ;
 int musb_h_ep0_irq (struct musb*) ;
 int musb_host_rx (struct musb*,scalar_t__) ;
 int musb_host_tx (struct musb*,scalar_t__) ;

void musb_dma_completion(struct musb *musb, u8 epnum, u8 transmit)
{


 if (!epnum) {
  if (!is_cppi_enabled(musb)) {

   if (is_host_active(musb))
    musb_h_ep0_irq(musb);
   else
    musb_g_ep0_irq(musb);
  }
 } else {

  if (transmit) {
   if (is_host_active(musb))
    musb_host_tx(musb, epnum);
   else
    musb_g_tx(musb, epnum);
  } else {

   if (is_host_active(musb))
    musb_host_rx(musb, epnum);
   else
    musb_g_rx(musb, epnum);
  }
 }
}
