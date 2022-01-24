#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct us_data {TYPE_1__* pusb_dev; int /*<<< orphan*/  dflags; int /*<<< orphan*/  pusb_intf; } ;
struct TYPE_4__ {int quirks; } ;

/* Variables and functions */
 int EIO ; 
 int EPERM ; 
 int USB_QUIRK_RESET ; 
 int /*<<< orphan*/  US_FLIDX_DISCONNECTING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct us_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(struct us_data *us)
{
	int result;

	/*for these devices we must use the class specific method */
	if (us->pusb_dev->quirks & USB_QUIRK_RESET)
		return -EPERM;

	result = FUNC1(us->pusb_dev, us->pusb_intf);
	if (result < 0)
		FUNC3(us, "unable to lock device for reset: %d\n",
			     result);
	else {
		/* Were we disconnected while waiting for the lock? */
		if (FUNC0(US_FLIDX_DISCONNECTING, &us->dflags)) {
			result = -EIO;
			FUNC3(us, "No reset during disconnect\n");
		} else {
			result = FUNC2(us->pusb_dev);
			FUNC3(us, "usb_reset_device returns %d\n",
				     result);
		}
		FUNC4(us->pusb_dev);
	}
	return result;
}