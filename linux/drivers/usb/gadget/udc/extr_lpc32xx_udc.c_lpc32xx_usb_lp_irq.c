
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int enabled_devints; int lock; int dev; int udp_baseaddr; } ;
typedef int irqreturn_t ;


 int CMD_RD_ERR_STAT ;
 int DAT_RD_ERR_STAT ;
 int ERR_INT ;
 int IRQ_HANDLED ;
 int USBD_DEVINTCLR (int ) ;
 int USBD_DEVINTST (int ) ;
 int USBD_DEV_STAT ;
 int USBD_EP_FAST ;
 int dev_dbg (int ,char*,int) ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udc_handle_dev (struct lpc32xx_udc*) ;
 int udc_protocol_cmd_r (struct lpc32xx_udc*,int ) ;
 int udc_protocol_cmd_w (struct lpc32xx_udc*,int ) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t lpc32xx_usb_lp_irq(int irq, void *_udc)
{
 u32 tmp, devstat;
 struct lpc32xx_udc *udc = _udc;

 spin_lock(&udc->lock);


 devstat = readl(USBD_DEVINTST(udc->udp_baseaddr));

 devstat &= ~USBD_EP_FAST;
 writel(devstat, USBD_DEVINTCLR(udc->udp_baseaddr));
 devstat = devstat & udc->enabled_devints;


 if (devstat & USBD_DEV_STAT)
  udc_handle_dev(udc);






 if (devstat & ERR_INT) {




  udc_protocol_cmd_w(udc, CMD_RD_ERR_STAT);
  tmp = udc_protocol_cmd_r(udc, DAT_RD_ERR_STAT);
  dev_dbg(udc->dev, "Device error (0x%x)!\n", tmp);
 }

 spin_unlock(&udc->lock);

 return IRQ_HANDLED;
}
