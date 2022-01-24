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
struct usb_hcd {int /*<<< orphan*/  rh_timer; struct urb* status_urb; scalar_t__ uses_new_polling; int /*<<< orphan*/  flags; TYPE_1__* driver; int /*<<< orphan*/  rh_pollable; } ;
struct urb {int actual_length; int /*<<< orphan*/  transfer_buffer; } ;
struct TYPE_2__ {int (* hub_status_data ) (struct usb_hcd*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_POLL_PENDING ; 
 int FUNC0 (struct usb_hcd*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hcd_root_hub_lock ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct usb_hcd*,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*,struct urb*) ; 

void FUNC11(struct usb_hcd *hcd)
{
	struct urb	*urb;
	int		length;
	unsigned long	flags;
	char		buffer[6];	/* Any root hubs with > 31 ports? */

	if (FUNC8(!hcd->rh_pollable))
		return;
	if (!hcd->uses_new_polling && !hcd->status_urb)
		return;

	length = hcd->driver->hub_status_data(hcd, buffer);
	if (length > 0) {

		/* try to complete the status urb */
		FUNC5(&hcd_root_hub_lock, flags);
		urb = hcd->status_urb;
		if (urb) {
			FUNC1(HCD_FLAG_POLL_PENDING, &hcd->flags);
			hcd->status_urb = NULL;
			urb->actual_length = length;
			FUNC2(urb->transfer_buffer, buffer, length);

			FUNC10(hcd, urb);
			FUNC9(hcd, urb, 0);
		} else {
			length = 0;
			FUNC4(HCD_FLAG_POLL_PENDING, &hcd->flags);
		}
		FUNC6(&hcd_root_hub_lock, flags);
	}

	/* The USB 2.0 spec says 256 ms.  This is close enough and won't
	 * exceed that limit if HZ is 100. The math is more clunky than
	 * maybe expected, this is to make sure that all timers for USB devices
	 * fire at the same time to give the CPU a break in between */
	if (hcd->uses_new_polling ? FUNC0(hcd) :
			(length == 0 && hcd->status_urb != NULL))
		FUNC3 (&hcd->rh_timer, (jiffies/(HZ/4) + 1) * (HZ/4));
}