
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int realized_eps; int udp_baseaddr; } ;


 int USBD_REEP (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void udc_unrealize_hwep(struct lpc32xx_udc *udc, u32 hwep)
{
 udc->realized_eps &= ~(1 << hwep);
 writel(udc->realized_eps, USBD_REEP(udc->udp_baseaddr));
}
