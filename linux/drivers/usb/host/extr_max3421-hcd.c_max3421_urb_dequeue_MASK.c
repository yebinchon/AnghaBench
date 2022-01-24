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
struct max3421_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  spi_thread; int /*<<< orphan*/  todo; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_UNLINK ; 
 struct max3421_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct max3421_hcd *max3421_hcd = FUNC0(hcd);
	unsigned long flags;
	int retval;

	FUNC2(&max3421_hcd->lock, flags);

	/*
	 * This will set urb->unlinked which in turn causes the entry
	 * to be dropped at the next opportunity.
	 */
	retval = FUNC4(hcd, urb, status);
	if (retval == 0) {
		FUNC1(CHECK_UNLINK, &max3421_hcd->todo);
		FUNC5(max3421_hcd->spi_thread);
	}
	FUNC3(&max3421_hcd->lock, flags);
	return retval;
}