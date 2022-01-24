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
struct dev_data {int state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GADGETFS_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct dev_data*,char*,int) ; 
#define  STATE_DEV_CONNECTED 130 
#define  STATE_DEV_SETUP 129 
#define  STATE_DEV_UNCONNECTED 128 
 int /*<<< orphan*/  FUNC1 (struct dev_data*) ; 
 struct dev_data* FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6 (struct usb_gadget *gadget)
{
	struct dev_data		*dev = FUNC2 (gadget);
	unsigned long		flags;

	FUNC0 (dev, "suspended from state %d\n", dev->state);
	FUNC4(&dev->lock, flags);
	switch (dev->state) {
	case STATE_DEV_SETUP:		// VERY odd... host died??
	case STATE_DEV_CONNECTED:
	case STATE_DEV_UNCONNECTED:
		FUNC3 (dev, GADGETFS_SUSPEND);
		FUNC1 (dev);
		/* FALLTHROUGH */
	default:
		break;
	}
	FUNC5(&dev->lock, flags);
}