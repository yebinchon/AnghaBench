
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm63xx_udc {int dummy; } ;


 int USBD_CONTROL_INIT_SEL_MASK ;
 int USBD_CONTROL_INIT_SEL_SHIFT ;
 int USBD_CONTROL_REG ;
 int usbd_readl (struct bcm63xx_udc*,int ) ;
 int usbd_writel (struct bcm63xx_udc*,int,int ) ;

__attribute__((used)) static void bcm63xx_ep_dma_select(struct bcm63xx_udc *udc, int idx)
{
 u32 val = usbd_readl(udc, USBD_CONTROL_REG);

 val &= ~USBD_CONTROL_INIT_SEL_MASK;
 val |= idx << USBD_CONTROL_INIT_SEL_SHIFT;
 usbd_writel(udc, val, USBD_CONTROL_REG);
}
