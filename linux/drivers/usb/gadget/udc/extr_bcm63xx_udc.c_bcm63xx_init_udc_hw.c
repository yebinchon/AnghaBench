
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ max_speed; int speed; TYPE_2__* ep0; int ep_list; } ;
struct bcm63xx_udc {TYPE_1__ gadget; void* usbh_clk; void* usbd_clk; int dev; int ep0state; struct bcm63xx_ep* bep; int ep0_ctrl_buf; } ;
struct TYPE_5__ {int ep_list; int * desc; int * ops; int caps; int name; } ;
struct bcm63xx_ep {int ep_num; TYPE_2__ ep; int queue; struct bcm63xx_udc* udc; scalar_t__ halted; } ;
struct TYPE_6__ {int caps; int name; } ;


 int BCM63XX_MAX_CTRL_PKT ;
 int BCM63XX_NUM_EP ;
 int BCM63XX_SPD_FULL ;
 int BCM63XX_SPD_HIGH ;
 int EIO ;
 int ENOMEM ;
 int EP0_SHUTDOWN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (void*) ;
 int USBD_CONTROL_AUTO_CSRS_MASK ;
 int USBD_CONTROL_DONE_CSRS_MASK ;
 int USBD_CONTROL_REG ;
 int USBD_CONTROL_RXZSCFG_MASK ;
 int USBD_EVENT_IRQ_CFG_FALLING (int ) ;
 int USBD_EVENT_IRQ_CFG_HI_REG ;
 int USBD_EVENT_IRQ_CFG_LO_REG ;
 int USBD_EVENT_IRQ_ENUM_ON ;
 int USBD_EVENT_IRQ_SET_CSRS ;
 int USBD_STRAPS_APP_8BITPHY_MASK ;
 int USBD_STRAPS_APP_CSRPRGSUP_MASK ;
 int USBD_STRAPS_APP_RAM_IF_MASK ;
 int USBD_STRAPS_APP_RMTWKUP_MASK ;
 int USBD_STRAPS_APP_SELF_PWR_MASK ;
 int USBD_STRAPS_REG ;
 int USBD_STRAPS_SPEED_SHIFT ;
 scalar_t__ USB_SPEED_HIGH ;
 int USB_SPEED_UNKNOWN ;
 TYPE_3__* bcm63xx_ep_info ;
 int bcm63xx_set_ctrl_irqs (struct bcm63xx_udc*,int) ;
 int bcm63xx_udc_ep_ops ;
 int bcm63xx_uninit_udc_hw (struct bcm63xx_udc*) ;
 void* clk_get (int ,char*) ;
 int clk_put (void*) ;
 int devm_kzalloc (int ,int ,int ) ;
 scalar_t__ irq_coalesce ;
 int iudma_init (struct bcm63xx_udc*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int set_clocks (struct bcm63xx_udc*,int) ;
 int usb_ep_set_maxpacket_limit (TYPE_2__*,int ) ;
 int usbd_writel (struct bcm63xx_udc*,int,int ) ;

__attribute__((used)) static int bcm63xx_init_udc_hw(struct bcm63xx_udc *udc)
{
 int i, rc = 0;
 u32 val;

 udc->ep0_ctrl_buf = devm_kzalloc(udc->dev, BCM63XX_MAX_CTRL_PKT,
      GFP_KERNEL);
 if (!udc->ep0_ctrl_buf)
  return -ENOMEM;

 INIT_LIST_HEAD(&udc->gadget.ep_list);
 for (i = 0; i < BCM63XX_NUM_EP; i++) {
  struct bcm63xx_ep *bep = &udc->bep[i];

  bep->ep.name = bcm63xx_ep_info[i].name;
  bep->ep.caps = bcm63xx_ep_info[i].caps;
  bep->ep_num = i;
  bep->ep.ops = &bcm63xx_udc_ep_ops;
  list_add_tail(&bep->ep.ep_list, &udc->gadget.ep_list);
  bep->halted = 0;
  usb_ep_set_maxpacket_limit(&bep->ep, BCM63XX_MAX_CTRL_PKT);
  bep->udc = udc;
  bep->ep.desc = ((void*)0);
  INIT_LIST_HEAD(&bep->queue);
 }

 udc->gadget.ep0 = &udc->bep[0].ep;
 list_del(&udc->bep[0].ep.ep_list);

 udc->gadget.speed = USB_SPEED_UNKNOWN;
 udc->ep0state = EP0_SHUTDOWN;

 udc->usbh_clk = clk_get(udc->dev, "usbh");
 if (IS_ERR(udc->usbh_clk))
  return -EIO;

 udc->usbd_clk = clk_get(udc->dev, "usbd");
 if (IS_ERR(udc->usbd_clk)) {
  clk_put(udc->usbh_clk);
  return -EIO;
 }

 set_clocks(udc, 1);

 val = USBD_CONTROL_AUTO_CSRS_MASK |
       USBD_CONTROL_DONE_CSRS_MASK |
       (irq_coalesce ? USBD_CONTROL_RXZSCFG_MASK : 0);
 usbd_writel(udc, val, USBD_CONTROL_REG);

 val = USBD_STRAPS_APP_SELF_PWR_MASK |
       USBD_STRAPS_APP_RAM_IF_MASK |
       USBD_STRAPS_APP_CSRPRGSUP_MASK |
       USBD_STRAPS_APP_8BITPHY_MASK |
       USBD_STRAPS_APP_RMTWKUP_MASK;

 if (udc->gadget.max_speed == USB_SPEED_HIGH)
  val |= (BCM63XX_SPD_HIGH << USBD_STRAPS_SPEED_SHIFT);
 else
  val |= (BCM63XX_SPD_FULL << USBD_STRAPS_SPEED_SHIFT);
 usbd_writel(udc, val, USBD_STRAPS_REG);

 bcm63xx_set_ctrl_irqs(udc, 0);

 usbd_writel(udc, 0, USBD_EVENT_IRQ_CFG_LO_REG);

 val = USBD_EVENT_IRQ_CFG_FALLING(USBD_EVENT_IRQ_ENUM_ON) |
       USBD_EVENT_IRQ_CFG_FALLING(USBD_EVENT_IRQ_SET_CSRS);
 usbd_writel(udc, val, USBD_EVENT_IRQ_CFG_HI_REG);

 rc = iudma_init(udc);
 set_clocks(udc, 0);
 if (rc)
  bcm63xx_uninit_udc_hw(udc);

 return 0;
}
