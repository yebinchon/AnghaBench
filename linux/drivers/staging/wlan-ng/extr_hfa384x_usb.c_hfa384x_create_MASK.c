#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reapable; int /*<<< orphan*/  completing; int /*<<< orphan*/  active; int /*<<< orphan*/  pending; int /*<<< orphan*/  lock; } ;
struct hfa384x {int /*<<< orphan*/  commsqual_timer; int /*<<< orphan*/  commsqual_bh; int /*<<< orphan*/  state; int /*<<< orphan*/  link_status; int /*<<< orphan*/  ctlx_urb; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  reqtimer; int /*<<< orphan*/  resptimer; int /*<<< orphan*/  throttle; int /*<<< orphan*/  usb_work; int /*<<< orphan*/  link_bh; int /*<<< orphan*/  completion_bh; int /*<<< orphan*/  reaper_bh; int /*<<< orphan*/  authq; TYPE_1__ ctlxq; int /*<<< orphan*/  cmdq; int /*<<< orphan*/  endp_out; int /*<<< orphan*/  endp_in; struct usb_device* usb; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFA384x_LINK_NOTCONNECTED ; 
 int /*<<< orphan*/  HFA384x_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hfa384x_usb_defer ; 
 int /*<<< orphan*/  hfa384x_usb_throttlefn ; 
 int /*<<< orphan*/  hfa384x_usbctlx_completion_task ; 
 int /*<<< orphan*/  hfa384x_usbctlx_reaper_task ; 
 int /*<<< orphan*/  hfa384x_usbctlx_reqtimerfn ; 
 int /*<<< orphan*/  hfa384x_usbctlx_resptimerfn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfa384x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  prism2sta_commsqual_defer ; 
 int /*<<< orphan*/  prism2sta_commsqual_timer ; 
 int /*<<< orphan*/  prism2sta_processing_defer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int) ; 

void FUNC11(struct hfa384x *hw, struct usb_device *usb)
{
	FUNC3(hw, 0, sizeof(*hw));
	hw->usb = usb;

	/* set up the endpoints */
	hw->endp_in = FUNC9(usb, 1);
	hw->endp_out = FUNC10(usb, 2);

	/* Set up the waitq */
	FUNC2(&hw->cmdq);

	/* Initialize the command queue */
	FUNC5(&hw->ctlxq.lock);
	FUNC0(&hw->ctlxq.pending);
	FUNC0(&hw->ctlxq.active);
	FUNC0(&hw->ctlxq.completing);
	FUNC0(&hw->ctlxq.reapable);

	/* Initialize the authentication queue */
	FUNC4(&hw->authq);

	FUNC6(&hw->reaper_bh,
		     hfa384x_usbctlx_reaper_task, (unsigned long)hw);
	FUNC6(&hw->completion_bh,
		     hfa384x_usbctlx_completion_task, (unsigned long)hw);
	FUNC1(&hw->link_bh, prism2sta_processing_defer);
	FUNC1(&hw->usb_work, hfa384x_usb_defer);

	FUNC7(&hw->throttle, hfa384x_usb_throttlefn, 0);

	FUNC7(&hw->resptimer, hfa384x_usbctlx_resptimerfn, 0);

	FUNC7(&hw->reqtimer, hfa384x_usbctlx_reqtimerfn, 0);

	FUNC8(&hw->rx_urb);
	FUNC8(&hw->tx_urb);
	FUNC8(&hw->ctlx_urb);

	hw->link_status = HFA384x_LINK_NOTCONNECTED;
	hw->state = HFA384x_STATE_INIT;

	FUNC1(&hw->commsqual_bh, prism2sta_commsqual_defer);
	FUNC7(&hw->commsqual_timer, prism2sta_commsqual_timer, 0);
}