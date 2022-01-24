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
struct wlandevice {int /*<<< orphan*/ * netdev; int /*<<< orphan*/  rx_bh; } ;
struct wireless_dev {scalar_t__ wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wireless_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct wlandevice *wlandev)
{
	struct wireless_dev *wdev;

	FUNC2(&wlandev->rx_bh);

	if (wlandev->netdev) {
		wdev = FUNC1(wlandev->netdev);
		if (wdev->wiphy)
			FUNC3(wdev->wiphy);
		FUNC0(wlandev->netdev);
		wlandev->netdev = NULL;
	}
}