#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dwc2_hsotg {scalar_t__ lx_state; int /*<<< orphan*/  lock; scalar_t__ enabled; TYPE_2__* driver; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 scalar_t__ DWC2_L2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct dwc2_hsotg *hsotg)
{
	unsigned long flags;

	if (hsotg->lx_state == DWC2_L2)
		return 0;

	if (hsotg->driver) {
		FUNC0(hsotg->dev, "resuming usb gadget %s\n",
			 hsotg->driver->driver.name);

		FUNC4(&hsotg->lock, flags);
		FUNC3(hsotg, false);
		if (hsotg->enabled) {
			/* Enable ACG feature in device mode,if supported */
			FUNC1(hsotg);
			FUNC2(hsotg);
		}
		FUNC5(&hsotg->lock, flags);
	}

	return 0;
}