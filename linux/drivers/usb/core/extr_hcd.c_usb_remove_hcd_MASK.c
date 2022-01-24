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
struct TYPE_4__ {int /*<<< orphan*/  controller; struct usb_device* root_hub; } ;
struct usb_hcd {scalar_t__ irq; scalar_t__ flags; int /*<<< orphan*/  phy_roothub; TYPE_2__ self; int /*<<< orphan*/  rh_timer; int /*<<< orphan*/  state; TYPE_1__* driver; scalar_t__ rh_pollable; int /*<<< orphan*/  died_work; int /*<<< orphan*/  wakeup_work; scalar_t__ rh_registered; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* stop ) (struct usb_hcd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int /*<<< orphan*/  HCD_FLAG_RH_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HC_STATE_HALT ; 
 int /*<<< orphan*/  HC_STATE_QUIESCING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 
 int /*<<< orphan*/  hcd_root_hub_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_hcd*) ; 
 int /*<<< orphan*/  usb_bus_idr_lock ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device**) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 scalar_t__ FUNC16 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_hcd*) ; 

void FUNC20(struct usb_hcd *hcd)
{
	struct usb_device *rhdev = hcd->self.root_hub;

	FUNC5(hcd->self.controller, "remove, state %x\n", hcd->state);

	FUNC15(rhdev);
	FUNC2(HCD_FLAG_RH_RUNNING, &hcd->flags);
	if (FUNC0 (hcd->state))
		hcd->state = HC_STATE_QUIESCING;

	FUNC4(hcd->self.controller, "roothub graceful disconnect\n");
	FUNC10 (&hcd_root_hub_lock);
	hcd->rh_registered = 0;
	FUNC11 (&hcd_root_hub_lock);

#ifdef CONFIG_PM
	cancel_work_sync(&hcd->wakeup_work);
#endif
	FUNC1(&hcd->died_work);

	FUNC8(&usb_bus_idr_lock);
	FUNC14(&rhdev);		/* Sets rhdev to NULL */
	FUNC9(&usb_bus_idr_lock);

	/*
	 * tasklet_kill() isn't needed here because:
	 * - driver's disconnect() called from usb_disconnect() should
	 *   make sure its URBs are completed during the disconnect()
	 *   callback
	 *
	 * - it is too late to run complete() here since driver may have
	 *   been removed already now
	 */

	/* Prevent any more root-hub status calls from the timer.
	 * The HCD might still restart the timer (if a port status change
	 * interrupt occurs), but usb_hcd_poll_rh_status() won't invoke
	 * the hub_status_data() callback.
	 */
	hcd->rh_pollable = 0;
	FUNC2(HCD_FLAG_POLL_RH, &hcd->flags);
	FUNC3(&hcd->rh_timer);

	hcd->driver->stop(hcd);
	hcd->state = HC_STATE_HALT;

	/* In case the HCD restarted the timer, stop it again. */
	FUNC2(HCD_FLAG_POLL_RH, &hcd->flags);
	FUNC3(&hcd->rh_timer);

	if (FUNC16(hcd)) {
		if (hcd->irq > 0)
			FUNC6(hcd->irq, hcd);
	}

	FUNC13(&hcd->self);
	FUNC7(hcd);

	FUNC18(hcd->phy_roothub);
	FUNC17(hcd->phy_roothub);

	FUNC19(hcd);
	hcd->flags = 0;
}