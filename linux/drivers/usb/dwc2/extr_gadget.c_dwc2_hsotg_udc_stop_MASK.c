#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_gadget {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  speed; } ;
struct dwc2_hsotg {int num_of_eps; scalar_t__ dr_mode; TYPE_4__* uphy; int /*<<< orphan*/  lock; scalar_t__ enabled; TYPE_3__ gadget; int /*<<< orphan*/ * driver; TYPE_2__** eps_out; TYPE_1__** eps_in; } ;
struct TYPE_8__ {int /*<<< orphan*/  otg; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep; } ;
struct TYPE_5__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ USB_DR_MODE_PERIPHERAL ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dwc2_hsotg* FUNC6 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget *gadget)
{
	struct dwc2_hsotg *hsotg = FUNC6(gadget);
	unsigned long flags = 0;
	int ep;

	if (!hsotg)
		return -ENODEV;

	/* all endpoints should be shutdown */
	for (ep = 1; ep < hsotg->num_of_eps; ep++) {
		if (hsotg->eps_in[ep])
			FUNC1(&hsotg->eps_in[ep]->ep);
		if (hsotg->eps_out[ep])
			FUNC1(&hsotg->eps_out[ep]->ep);
	}

	FUNC4(&hsotg->lock, flags);

	hsotg->driver = NULL;
	hsotg->gadget.speed = USB_SPEED_UNKNOWN;
	hsotg->enabled = 0;

	FUNC5(&hsotg->lock, flags);

	if (!FUNC0(hsotg->uphy))
		FUNC3(hsotg->uphy->otg, NULL);

	if (hsotg->dr_mode == USB_DR_MODE_PERIPHERAL)
		FUNC2(hsotg);

	return 0;
}