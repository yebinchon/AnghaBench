
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int udp_baseaddr; int enabled_devints; } ;


 int USBD_DEVINTEN (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void uda_enable_devint(struct lpc32xx_udc *udc, u32 devmask)
{
 udc->enabled_devints |= devmask;
 writel(udc->enabled_devints, USBD_DEVINTEN(udc->udp_baseaddr));
}
