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
struct TYPE_6__ {int /*<<< orphan*/  controller; scalar_t__ otg_port; } ;
struct usb_hcd {int power_budget; int skip_phy_initialization; TYPE_3__ self; } ;
struct musb {scalar_t__ port_mode; TYPE_1__* xceiv; struct usb_hcd* hcd; } ;
struct TYPE_5__ {TYPE_3__* host; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {TYPE_2__* otg; } ;

/* Variables and functions */
 scalar_t__ MUSB_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 int /*<<< orphan*/  OTG_STATE_A_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC3 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct musb *musb, int power_budget)
{
	int ret;
	struct usb_hcd *hcd = musb->hcd;

	if (musb->port_mode == MUSB_HOST) {
		FUNC0(musb);
		musb->xceiv->otg->state = OTG_STATE_A_IDLE;
	}
	FUNC2(musb->xceiv->otg, &hcd->self);
	/* don't support otg protocols */
	hcd->self.otg_port = 0;
	musb->xceiv->otg->host = &hcd->self;
	hcd->power_budget = 2 * (power_budget ? : 250);
	hcd->skip_phy_initialization = 1;

	ret = FUNC3(hcd, 0, 0);
	if (ret < 0)
		return ret;

	FUNC1(hcd->self.controller);
	return 0;
}