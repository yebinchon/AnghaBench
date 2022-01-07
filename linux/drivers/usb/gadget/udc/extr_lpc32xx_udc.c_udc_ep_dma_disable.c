
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int udp_baseaddr; } ;


 int USBD_EPDMADIS (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void udc_ep_dma_disable(struct lpc32xx_udc *udc, u32 hwep)
{
 writel((1 << hwep), USBD_EPDMADIS(udc->udp_baseaddr));
}
