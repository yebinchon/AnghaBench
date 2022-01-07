
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int udp_baseaddr; int dev; } ;


 int USBD_CCEMPTY ;
 int USBD_CDFULL ;
 int USBD_CMDDATA (int ) ;
 int USBD_DEVINTCLR (int ) ;
 int USBD_DEVINTST (int ) ;
 int dev_dbg (int ,char*) ;
 int readl (int ) ;
 int udc_protocol_cmd_w (struct lpc32xx_udc*,int) ;
 int writel (int,int ) ;

__attribute__((used)) static u32 udc_protocol_cmd_r(struct lpc32xx_udc *udc, u32 cmd)
{
 int to = 1000;


 writel((USBD_CDFULL | USBD_CCEMPTY),
       USBD_DEVINTCLR(udc->udp_baseaddr));


 udc_protocol_cmd_w(udc, cmd);

 while ((!(readl(USBD_DEVINTST(udc->udp_baseaddr)) & USBD_CDFULL))
        && (to > 0))
  to--;
 if (!to)
  dev_dbg(udc->dev,
   "Protocol engine didn't receive response (CDFULL)\n");

 return readl(USBD_CMDDATA(udc->udp_baseaddr));
}
