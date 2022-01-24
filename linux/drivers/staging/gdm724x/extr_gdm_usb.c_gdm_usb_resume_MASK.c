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
struct usb_interface {int /*<<< orphan*/  usb_dev; } ;
struct tx_cxt {int /*<<< orphan*/  lock; } ;
struct rx_cxt {int avail_count; int /*<<< orphan*/  rx_lock; } ;
struct phy_dev {struct lte_udev* priv_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct lte_udev {scalar_t__ usb_state; TYPE_1__ work_tx; struct tx_cxt tx; int /*<<< orphan*/  rx_cb; struct rx_cxt rx; } ;

/* Variables and functions */
 int MAX_RX_SUBMIT_COUNT ; 
 scalar_t__ PM_NORMAL ; 
 scalar_t__ PM_SUSPEND ; 
 int /*<<< orphan*/  USB_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lte_udev*,int /*<<< orphan*/ ,struct phy_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct phy_dev* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct phy_dev *phy_dev;
	struct lte_udev *udev;
	struct tx_cxt *tx;
	struct rx_cxt *rx;
	unsigned long flags;
	int issue_count;
	int i;

	phy_dev = FUNC5(intf);
	udev = phy_dev->priv_dev;
	rx = &udev->rx;

	if (udev->usb_state != PM_SUSPEND) {
		FUNC0(intf->usb_dev, "usb resume - invalid state\n");
		return -1;
	}
	udev->usb_state = PM_NORMAL;

	FUNC3(&rx->rx_lock, flags);
	issue_count = rx->avail_count - MAX_RX_SUBMIT_COUNT;
	FUNC4(&rx->rx_lock, flags);

	if (issue_count >= 0) {
		for (i = 0; i < issue_count; i++)
			FUNC1(phy_dev->priv_dev,
				     udev->rx_cb,
				     phy_dev,
				     USB_COMPLETE);
	}

	tx = &udev->tx;
	FUNC3(&tx->lock, flags);
	FUNC2(&udev->work_tx.work);
	FUNC4(&tx->lock, flags);

	return 0;
}