#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sg_supported; char* name; int lpm_capable; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  speed; int /*<<< orphan*/ * ops; } ;
struct dwc3 {int irq_gadget; scalar_t__ revision; int /*<<< orphan*/  ep0_trb_addr; void* ep0_trb; int /*<<< orphan*/  sysdev; int /*<<< orphan*/  setup_buf; int /*<<< orphan*/  bounce_addr; void* bounce; int /*<<< orphan*/  maximum_speed; TYPE_1__ gadget; int /*<<< orphan*/  dev; int /*<<< orphan*/  num_eps; int /*<<< orphan*/  dis_metastability_quirk; int /*<<< orphan*/  ep0_in_setup; } ;

/* Variables and functions */
 int DWC3_BOUNCE_SIZE ; 
 int /*<<< orphan*/  DWC3_EP0_SETUP_SIZE ; 
 scalar_t__ DWC3_REVISION_220A ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc3*) ; 
 int FUNC5 (struct dwc3*) ; 
 int FUNC6 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dwc3_gadget_ops ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC12(struct dwc3 *dwc)
{
	int ret;
	int irq;

	irq = FUNC5(dwc);
	if (irq < 0) {
		ret = irq;
		goto err0;
	}

	dwc->irq_gadget = irq;

	dwc->ep0_trb = FUNC2(dwc->sysdev,
					  sizeof(*dwc->ep0_trb) * 2,
					  &dwc->ep0_trb_addr, GFP_KERNEL);
	if (!dwc->ep0_trb) {
		FUNC0(dwc->dev, "failed to allocate ep0 trb\n");
		ret = -ENOMEM;
		goto err0;
	}

	dwc->setup_buf = FUNC10(DWC3_EP0_SETUP_SIZE, GFP_KERNEL);
	if (!dwc->setup_buf) {
		ret = -ENOMEM;
		goto err1;
	}

	dwc->bounce = FUNC2(dwc->sysdev, DWC3_BOUNCE_SIZE,
			&dwc->bounce_addr, GFP_KERNEL);
	if (!dwc->bounce) {
		ret = -ENOMEM;
		goto err2;
	}

	FUNC8(&dwc->ep0_in_setup);

	dwc->gadget.ops			= &dwc3_gadget_ops;
	dwc->gadget.speed		= USB_SPEED_UNKNOWN;
	dwc->gadget.sg_supported	= true;
	dwc->gadget.name		= "dwc3-gadget";
	dwc->gadget.lpm_capable		= true;

	/*
	 * FIXME We might be setting max_speed to <SUPER, however versions
	 * <2.20a of dwc3 have an issue with metastability (documented
	 * elsewhere in this driver) which tells us we can't set max speed to
	 * anything lower than SUPER.
	 *
	 * Because gadget.max_speed is only used by composite.c and function
	 * drivers (i.e. it won't go into dwc3's registers) we are allowing this
	 * to happen so we avoid sending SuperSpeed Capability descriptor
	 * together with our BOS descriptor as that could confuse host into
	 * thinking we can handle super speed.
	 *
	 * Note that, in fact, we won't even support GetBOS requests when speed
	 * is less than super speed because we don't have means, yet, to tell
	 * composite.c that we are USB 2.0 + LPM ECN.
	 */
	if (dwc->revision < DWC3_REVISION_220A &&
	    !dwc->dis_metastability_quirk)
		FUNC1(dwc->dev, "changing max_speed on rev %08x\n",
				dwc->revision);

	dwc->gadget.max_speed		= dwc->maximum_speed;

	/*
	 * REVISIT: Here we should clear all pending IRQs to be
	 * sure we're starting from a well known location.
	 */

	ret = FUNC6(dwc, dwc->num_eps);
	if (ret)
		goto err3;

	ret = FUNC11(dwc->dev, &dwc->gadget);
	if (ret) {
		FUNC0(dwc->dev, "failed to register udc\n");
		goto err4;
	}

	FUNC7(&dwc->gadget, dwc->maximum_speed);

	return 0;

err4:
	FUNC4(dwc);

err3:
	FUNC3(dwc->sysdev, DWC3_BOUNCE_SIZE, dwc->bounce,
			dwc->bounce_addr);

err2:
	FUNC9(dwc->setup_buf);

err1:
	FUNC3(dwc->sysdev, sizeof(*dwc->ep0_trb) * 2,
			dwc->ep0_trb, dwc->ep0_trb_addr);

err0:
	return ret;
}