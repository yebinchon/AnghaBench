
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at91_udc {TYPE_1__* caps; int vbus; int enabled; } ;
struct TYPE_2__ {int (* pullup ) (struct at91_udc*,int) ;} ;


 int AT91_UDP_ICR ;
 int AT91_UDP_IDR ;
 int AT91_UDP_RXRSM ;
 int AT91_UDP_TXVC ;
 int AT91_UDP_TXVC_TXVDIS ;
 int DBG (char*,char*) ;
 int at91_udp_write (struct at91_udc*,int ,int ) ;
 int clk_off (struct at91_udc*) ;
 int clk_on (struct at91_udc*) ;
 int stop_activity (struct at91_udc*) ;
 int stub1 (struct at91_udc*,int) ;

__attribute__((used)) static void pullup(struct at91_udc *udc, int is_on)
{
 if (!udc->enabled || !udc->vbus)
  is_on = 0;
 DBG("%sactive\n", is_on ? "" : "in");

 if (is_on) {
  clk_on(udc);
  at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_RXRSM);
  at91_udp_write(udc, AT91_UDP_TXVC, 0);
 } else {
  stop_activity(udc);
  at91_udp_write(udc, AT91_UDP_IDR, AT91_UDP_RXRSM);
  at91_udp_write(udc, AT91_UDP_TXVC, AT91_UDP_TXVC_TXVDIS);
  clk_off(udc);
 }

 if (udc->caps && udc->caps->pullup)
  udc->caps->pullup(udc, is_on);
}
