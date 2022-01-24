#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_gadget {int dummy; } ;
struct dwc3 {scalar_t__ ep0state; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  ep0_in_setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_PULL_UP_TIMEOUT ; 
 scalar_t__ EP0_SETUP_PHASE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct dwc3*,int,int) ; 
 struct dwc3* FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_gadget *g, int is_on)
{
	struct dwc3		*dwc = FUNC2(g);
	unsigned long		flags;
	int			ret;

	is_on = !!is_on;

	/*
	 * Per databook, when we want to stop the gadget, if a control transfer
	 * is still in process, complete it and get the core into setup phase.
	 */
	if (!is_on && dwc->ep0state != EP0_SETUP_PHASE) {
		FUNC4(&dwc->ep0_in_setup);

		ret = FUNC7(&dwc->ep0_in_setup,
				FUNC3(DWC3_PULL_UP_TIMEOUT));
		if (ret == 0) {
			FUNC0(dwc->dev, "timed out waiting for SETUP phase\n");
			return -ETIMEDOUT;
		}
	}

	FUNC5(&dwc->lock, flags);
	ret = FUNC1(dwc, is_on, false);
	FUNC6(&dwc->lock, flags);

	return ret;
}