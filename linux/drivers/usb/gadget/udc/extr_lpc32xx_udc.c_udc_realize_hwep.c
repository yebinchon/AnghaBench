
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int realized_eps; int udp_baseaddr; int dev; } ;


 int USBD_DEVINTCLR (int ) ;
 int USBD_DEVINTST (int ) ;
 int USBD_EPIND (int ) ;
 int USBD_EPMAXPSIZE (int ) ;
 int USBD_EP_RLZED ;
 int USBD_REEP (int ) ;
 int dev_dbg (int ,char*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void udc_realize_hwep(struct lpc32xx_udc *udc, u32 hwep,
        u32 maxpacket)
{
 int to = 1000;

 writel(USBD_EP_RLZED, USBD_DEVINTCLR(udc->udp_baseaddr));
 writel(hwep, USBD_EPIND(udc->udp_baseaddr));
 udc->realized_eps |= (1 << hwep);
 writel(udc->realized_eps, USBD_REEP(udc->udp_baseaddr));
 writel(maxpacket, USBD_EPMAXPSIZE(udc->udp_baseaddr));


 while ((!(readl(USBD_DEVINTST(udc->udp_baseaddr)) &
    USBD_EP_RLZED)) && (to > 0))
  to--;
 if (!to)
  dev_dbg(udc->dev, "EP not correctly realized in hardware\n");

 writel(USBD_EP_RLZED, USBD_DEVINTCLR(udc->udp_baseaddr));
}
