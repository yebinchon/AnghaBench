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
struct hfa384x {TYPE_1__* wlandev; int /*<<< orphan*/  usb; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct hfa384x *hw, int holdtime,
		      int settletime, int genesis)
{
	int result;

	result = FUNC1(hw->usb);
	if (result < 0) {
		FUNC0(hw->wlandev->netdev, "usb_reset_device() failed, result=%d.\n",
			   result);
	}

	return result;
}