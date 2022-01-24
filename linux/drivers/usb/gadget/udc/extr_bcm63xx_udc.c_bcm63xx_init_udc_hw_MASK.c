#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ max_speed; int /*<<< orphan*/  speed; TYPE_2__* ep0; int /*<<< orphan*/  ep_list; } ;
struct bcm63xx_udc {TYPE_1__ gadget; void* usbh_clk; void* usbd_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  ep0state; struct bcm63xx_ep* bep; int /*<<< orphan*/  ep0_ctrl_buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  ep_list; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * ops; int /*<<< orphan*/  caps; int /*<<< orphan*/  name; } ;
struct bcm63xx_ep {int ep_num; TYPE_2__ ep; int /*<<< orphan*/  queue; struct bcm63xx_udc* udc; scalar_t__ halted; } ;
struct TYPE_6__ {int /*<<< orphan*/  caps; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM63XX_MAX_CTRL_PKT ; 
 int BCM63XX_NUM_EP ; 
 int BCM63XX_SPD_FULL ; 
 int BCM63XX_SPD_HIGH ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EP0_SHUTDOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (void*) ; 
 int USBD_CONTROL_AUTO_CSRS_MASK ; 
 int USBD_CONTROL_DONE_CSRS_MASK ; 
 int /*<<< orphan*/  USBD_CONTROL_REG ; 
 int USBD_CONTROL_RXZSCFG_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_CFG_HI_REG ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_CFG_LO_REG ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_ENUM_ON ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_SET_CSRS ; 
 int USBD_STRAPS_APP_8BITPHY_MASK ; 
 int USBD_STRAPS_APP_CSRPRGSUP_MASK ; 
 int USBD_STRAPS_APP_RAM_IF_MASK ; 
 int USBD_STRAPS_APP_RMTWKUP_MASK ; 
 int USBD_STRAPS_APP_SELF_PWR_MASK ; 
 int /*<<< orphan*/  USBD_STRAPS_REG ; 
 int USBD_STRAPS_SPEED_SHIFT ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 TYPE_3__* bcm63xx_ep_info ; 
 int /*<<< orphan*/  FUNC3 (struct bcm63xx_udc*,int) ; 
 int /*<<< orphan*/  bcm63xx_udc_ep_ops ; 
 int /*<<< orphan*/  FUNC4 (struct bcm63xx_udc*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ irq_coalesce ; 
 int FUNC8 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct bcm63xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bcm63xx_udc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct bcm63xx_udc *udc)
{
	int i, rc = 0;
	u32 val;

	udc->ep0_ctrl_buf = FUNC7(udc->dev, BCM63XX_MAX_CTRL_PKT,
					 GFP_KERNEL);
	if (!udc->ep0_ctrl_buf)
		return -ENOMEM;

	FUNC0(&udc->gadget.ep_list);
	for (i = 0; i < BCM63XX_NUM_EP; i++) {
		struct bcm63xx_ep *bep = &udc->bep[i];

		bep->ep.name = bcm63xx_ep_info[i].name;
		bep->ep.caps = bcm63xx_ep_info[i].caps;
		bep->ep_num = i;
		bep->ep.ops = &bcm63xx_udc_ep_ops;
		FUNC9(&bep->ep.ep_list, &udc->gadget.ep_list);
		bep->halted = 0;
		FUNC12(&bep->ep, BCM63XX_MAX_CTRL_PKT);
		bep->udc = udc;
		bep->ep.desc = NULL;
		FUNC0(&bep->queue);
	}

	udc->gadget.ep0 = &udc->bep[0].ep;
	FUNC10(&udc->bep[0].ep.ep_list);

	udc->gadget.speed = USB_SPEED_UNKNOWN;
	udc->ep0state = EP0_SHUTDOWN;

	udc->usbh_clk = FUNC5(udc->dev, "usbh");
	if (FUNC1(udc->usbh_clk))
		return -EIO;

	udc->usbd_clk = FUNC5(udc->dev, "usbd");
	if (FUNC1(udc->usbd_clk)) {
		FUNC6(udc->usbh_clk);
		return -EIO;
	}

	FUNC11(udc, true);

	val = USBD_CONTROL_AUTO_CSRS_MASK |
	      USBD_CONTROL_DONE_CSRS_MASK |
	      (irq_coalesce ? USBD_CONTROL_RXZSCFG_MASK : 0);
	FUNC13(udc, val, USBD_CONTROL_REG);

	val = USBD_STRAPS_APP_SELF_PWR_MASK |
	      USBD_STRAPS_APP_RAM_IF_MASK |
	      USBD_STRAPS_APP_CSRPRGSUP_MASK |
	      USBD_STRAPS_APP_8BITPHY_MASK |
	      USBD_STRAPS_APP_RMTWKUP_MASK;

	if (udc->gadget.max_speed == USB_SPEED_HIGH)
		val |= (BCM63XX_SPD_HIGH << USBD_STRAPS_SPEED_SHIFT);
	else
		val |= (BCM63XX_SPD_FULL << USBD_STRAPS_SPEED_SHIFT);
	FUNC13(udc, val, USBD_STRAPS_REG);

	FUNC3(udc, false);

	FUNC13(udc, 0, USBD_EVENT_IRQ_CFG_LO_REG);

	val = FUNC2(USBD_EVENT_IRQ_ENUM_ON) |
	      FUNC2(USBD_EVENT_IRQ_SET_CSRS);
	FUNC13(udc, val, USBD_EVENT_IRQ_CFG_HI_REG);

	rc = FUNC8(udc);
	FUNC11(udc, false);
	if (rc)
		FUNC4(udc);

	return 0;
}