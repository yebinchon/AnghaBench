
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct at91_udc {int dummy; } ;


 int AT91_UDP_TXVC ;
 int AT91_UDP_TXVC_PUON ;
 int at91_udp_read (struct at91_udc*,int ) ;
 int at91_udp_write (struct at91_udc*,int ,int ) ;

__attribute__((used)) static void at91sam9260_udc_pullup(struct at91_udc *udc, int is_on)
{
 u32 txvc = at91_udp_read(udc, AT91_UDP_TXVC);

 if (is_on)
  txvc |= AT91_UDP_TXVC_PUON;
 else
  txvc &= ~AT91_UDP_TXVC_PUON;

 at91_udp_write(udc, AT91_UDP_TXVC, txvc);
}
