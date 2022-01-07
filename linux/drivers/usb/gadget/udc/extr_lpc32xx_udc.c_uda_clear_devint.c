
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int udp_baseaddr; } ;


 int USBD_DEVINTCLR (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void uda_clear_devint(struct lpc32xx_udc *udc, u32 mask)
{
 writel(mask, USBD_DEVINTCLR(udc->udp_baseaddr));
}
