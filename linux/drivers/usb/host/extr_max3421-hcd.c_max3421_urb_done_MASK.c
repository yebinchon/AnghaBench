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
struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct max3421_hcd {int urb_done; int /*<<< orphan*/  lock; struct urb* curr_urb; } ;

/* Variables and functions */
 struct max3421_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*,struct urb*) ; 

__attribute__((used)) static int
FUNC5(struct usb_hcd *hcd)
{
	struct max3421_hcd *max3421_hcd = FUNC0(hcd);
	unsigned long flags;
	struct urb *urb;
	int status;

	status = max3421_hcd->urb_done;
	max3421_hcd->urb_done = 0;
	if (status > 0)
		status = 0;
	urb = max3421_hcd->curr_urb;
	if (urb) {
		max3421_hcd->curr_urb = NULL;
		FUNC1(&max3421_hcd->lock, flags);
		FUNC4(hcd, urb);
		FUNC2(&max3421_hcd->lock, flags);

		/* must be called without the HCD spinlock: */
		FUNC3(hcd, urb, status);
	}
	return 1;
}