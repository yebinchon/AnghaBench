
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm63xx_udc {scalar_t__ usbd_regs; } ;


 scalar_t__ bcm_readl (scalar_t__) ;

__attribute__((used)) static inline u32 usbd_readl(struct bcm63xx_udc *udc, u32 off)
{
 return bcm_readl(udc->usbd_regs + off);
}
