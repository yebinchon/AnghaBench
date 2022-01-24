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
struct TYPE_5__ {int lpm_capable; int is_otg; int /*<<< orphan*/ * ep0; int /*<<< orphan*/  ep_list; int /*<<< orphan*/  name; int /*<<< orphan*/ * ops; int /*<<< orphan*/  max_speed; } ;
struct TYPE_4__ {scalar_t__ lpm; int /*<<< orphan*/  g_rx_fifo_size; int /*<<< orphan*/  g_np_tx_fifo_size; } ;
struct dwc2_hsotg {scalar_t__ dr_mode; int num_of_eps; int /*<<< orphan*/  ctrl_req; TYPE_3__** eps_out; TYPE_2__ gadget; TYPE_3__** eps_in; struct device* dev; int /*<<< orphan*/  irq; void* ep0_buff; void* ctrl_buff; int /*<<< orphan*/  op_state; TYPE_1__ params; scalar_t__ remote_wakeup_allowed; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC2_CTRL_BUFF_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  OTG_STATE_B_PERIPHERAL ; 
 scalar_t__ USB_DR_MODE_OTG ; 
 scalar_t__ USB_DR_MODE_PERIPHERAL ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 void* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dwc2_hsotg*) ; 
 int FUNC6 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dwc2_hsotg_gadget_ops ; 
 int FUNC10 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC11 (struct dwc2_hsotg*,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  dwc2_hsotg_irq ; 
 int FUNC12 (struct device*,TYPE_2__*) ; 
 scalar_t__ FUNC13 (struct dwc2_hsotg*) ; 

int FUNC14(struct dwc2_hsotg *hsotg)
{
	struct device *dev = hsotg->dev;
	int epnum;
	int ret;

	/* Dump fifo information */
	FUNC1(dev, "NonPeriodic TXFIFO size: %d\n",
		hsotg->params.g_np_tx_fifo_size);
	FUNC1(dev, "RXFIFO size: %d\n", hsotg->params.g_rx_fifo_size);

	hsotg->gadget.max_speed = USB_SPEED_HIGH;
	hsotg->gadget.ops = &dwc2_hsotg_gadget_ops;
	hsotg->gadget.name = FUNC3(dev);
	hsotg->remote_wakeup_allowed = 0;

	if (hsotg->params.lpm)
		hsotg->gadget.lpm_capable = true;

	if (hsotg->dr_mode == USB_DR_MODE_OTG)
		hsotg->gadget.is_otg = 1;
	else if (hsotg->dr_mode == USB_DR_MODE_PERIPHERAL)
		hsotg->op_state = OTG_STATE_B_PERIPHERAL;

	ret = FUNC10(hsotg);
	if (ret) {
		FUNC2(hsotg->dev, "Hardware configuration failed: %d\n", ret);
		return ret;
	}

	hsotg->ctrl_buff = FUNC4(hsotg->dev,
			DWC2_CTRL_BUFF_SIZE, GFP_KERNEL);
	if (!hsotg->ctrl_buff)
		return -ENOMEM;

	hsotg->ep0_buff = FUNC4(hsotg->dev,
			DWC2_CTRL_BUFF_SIZE, GFP_KERNEL);
	if (!hsotg->ep0_buff)
		return -ENOMEM;

	if (FUNC13(hsotg)) {
		ret = FUNC6(hsotg);
		if (ret < 0)
			return ret;
	}

	ret = FUNC5(hsotg->dev, hsotg->irq, dwc2_hsotg_irq,
			       IRQF_SHARED, FUNC3(hsotg->dev), hsotg);
	if (ret < 0) {
		FUNC2(dev, "cannot claim IRQ for gadget\n");
		return ret;
	}

	/* hsotg->num_of_eps holds number of EPs other than ep0 */

	if (hsotg->num_of_eps == 0) {
		FUNC2(dev, "wrong number of EPs (zero)\n");
		return -EINVAL;
	}

	/* setup endpoint information */

	FUNC0(&hsotg->gadget.ep_list);
	hsotg->gadget.ep0 = &hsotg->eps_out[0]->ep;

	/* allocate EP0 request */

	hsotg->ctrl_req = FUNC8(&hsotg->eps_out[0]->ep,
						     GFP_KERNEL);
	if (!hsotg->ctrl_req) {
		FUNC2(dev, "failed to allocate ctrl req\n");
		return -ENOMEM;
	}

	/* initialise the endpoints now the core has been initialised */
	for (epnum = 0; epnum < hsotg->num_of_eps; epnum++) {
		if (hsotg->eps_in[epnum])
			FUNC11(hsotg, hsotg->eps_in[epnum],
					  epnum, 1);
		if (hsotg->eps_out[epnum])
			FUNC11(hsotg, hsotg->eps_out[epnum],
					  epnum, 0);
	}

	ret = FUNC12(dev, &hsotg->gadget);
	if (ret) {
		FUNC9(&hsotg->eps_out[0]->ep,
					   hsotg->ctrl_req);
		return ret;
	}
	FUNC7(hsotg);

	return 0;
}