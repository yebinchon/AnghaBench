
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm63xx_udc {scalar_t__ usbd_regs; } ;


 int bcm_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void usbd_writel(struct bcm63xx_udc *udc, u32 val, u32 off)
{
 bcm_writel(val, udc->usbd_regs + off);
}
