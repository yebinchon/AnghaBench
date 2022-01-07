
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int enabled_hwepints; int udp_baseaddr; } ;


 int USBD_EPINTEN (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void uda_disable_hwepint(struct lpc32xx_udc *udc, u32 hwep)
{
 udc->enabled_hwepints &= ~(1 << hwep);
 writel(udc->enabled_hwepints, USBD_EPINTEN(udc->udp_baseaddr));
}
