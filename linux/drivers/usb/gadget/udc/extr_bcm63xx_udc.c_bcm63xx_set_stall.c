
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm63xx_udc {int dummy; } ;
struct bcm63xx_ep {int ep_num; } ;


 int USBD_STALL_ENABLE_MASK ;
 int USBD_STALL_EPNUM_SHIFT ;
 int USBD_STALL_REG ;
 int USBD_STALL_UPDATE_MASK ;
 int usbd_writel (struct bcm63xx_udc*,int,int ) ;

__attribute__((used)) static void bcm63xx_set_stall(struct bcm63xx_udc *udc, struct bcm63xx_ep *bep,
 bool is_stalled)
{
 u32 val;

 val = USBD_STALL_UPDATE_MASK |
  (is_stalled ? USBD_STALL_ENABLE_MASK : 0) |
  (bep->ep_num << USBD_STALL_EPNUM_SHIFT);
 usbd_writel(udc, val, USBD_STALL_REG);
}
