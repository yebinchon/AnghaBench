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
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct max3421_hcd {int port_status; scalar_t__ rh_state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 scalar_t__ MAX3421_RH_SUSPENDED ; 
 int PORT_C_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct max3421_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 

__attribute__((used)) static int
FUNC6(struct usb_hcd *hcd, char *buf)
{
	struct max3421_hcd *max3421_hcd = FUNC2(hcd);
	unsigned long flags;
	int retval = 0;

	FUNC3(&max3421_hcd->lock, flags);
	if (!FUNC0(hcd))
		goto done;

	*buf = 0;
	if ((max3421_hcd->port_status & PORT_C_MASK) != 0) {
		*buf = (1 << 1); /* a hub over-current condition exists */
		FUNC1(hcd->self.controller,
			"port status 0x%08x has changes\n",
			max3421_hcd->port_status);
		retval = 1;
		if (max3421_hcd->rh_state == MAX3421_RH_SUSPENDED)
			FUNC5(hcd);
	}
done:
	FUNC4(&max3421_hcd->lock, flags);
	return retval;
}