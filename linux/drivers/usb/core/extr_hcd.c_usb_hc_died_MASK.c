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
struct TYPE_3__ {int /*<<< orphan*/  root_hub; int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_2__* primary_hcd; int /*<<< orphan*/  died_work; TYPE_1__ self; int /*<<< orphan*/  flags; scalar_t__ rh_registered; struct usb_hcd* shared_hcd; } ;
struct TYPE_4__ {int /*<<< orphan*/  died_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_DEAD ; 
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int /*<<< orphan*/  HCD_FLAG_RH_RUNNING ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hcd_root_hub_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9 (struct usb_hcd *hcd)
{
	unsigned long flags;

	FUNC1 (hcd->self.controller, "HC died; cleaning up\n");

	FUNC4 (&hcd_root_hub_lock, flags);
	FUNC0(HCD_FLAG_RH_RUNNING, &hcd->flags);
	FUNC3(HCD_FLAG_DEAD, &hcd->flags);
	if (hcd->rh_registered) {
		FUNC0(HCD_FLAG_POLL_RH, &hcd->flags);

		/* make hub_wq clean up old urbs and devices */
		FUNC8 (hcd->self.root_hub,
				USB_STATE_NOTATTACHED);
		FUNC7(hcd->self.root_hub);
	}
	if (FUNC6(hcd) && hcd->shared_hcd) {
		hcd = hcd->shared_hcd;
		FUNC0(HCD_FLAG_RH_RUNNING, &hcd->flags);
		FUNC3(HCD_FLAG_DEAD, &hcd->flags);
		if (hcd->rh_registered) {
			FUNC0(HCD_FLAG_POLL_RH, &hcd->flags);

			/* make hub_wq clean up old urbs and devices */
			FUNC8(hcd->self.root_hub,
					USB_STATE_NOTATTACHED);
			FUNC7(hcd->self.root_hub);
		}
	}

	/* Handle the case where this function gets called with a shared HCD */
	if (FUNC6(hcd))
		FUNC2(&hcd->died_work);
	else
		FUNC2(&hcd->primary_hcd->died_work);

	FUNC5 (&hcd_root_hub_lock, flags);
	/* Make sure that the other roothub is also deallocated. */
}