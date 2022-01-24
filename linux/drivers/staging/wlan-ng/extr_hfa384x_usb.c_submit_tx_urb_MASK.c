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
struct urb {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct hfa384x {int /*<<< orphan*/  usb_work; int /*<<< orphan*/  usb_flags; TYPE_1__* wlandev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct net_device* netdev; int /*<<< orphan*/  hwremoved; } ;

/* Variables and functions */
 int ENOLINK ; 
 int EPIPE ; 
 int /*<<< orphan*/  WORK_TX_HALT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hfa384x *hw, struct urb *tx_urb, gfp_t memflags)
{
	struct net_device *netdev = hw->wlandev->netdev;
	int result;

	result = -ENOLINK;
	if (FUNC1(netdev)) {
		if (!hw->wlandev->hwremoved &&
		    !FUNC5(WORK_TX_HALT, &hw->usb_flags)) {
			result = FUNC6(tx_urb, memflags);

			/* Test whether we need to reset the TX pipe */
			if (result == -EPIPE) {
				FUNC0(hw->wlandev->netdev,
					    "%s tx pipe stalled: requesting reset\n",
					    netdev->name);
				FUNC4(WORK_TX_HALT, &hw->usb_flags);
				FUNC3(&hw->usb_work);
			} else if (result == 0) {
				FUNC2(netdev);
			}
		}
	}

	return result;
}