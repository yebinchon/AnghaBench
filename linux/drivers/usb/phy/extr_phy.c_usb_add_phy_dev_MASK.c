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
struct usb_phy {int /*<<< orphan*/  head; int /*<<< orphan*/  notifier; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  phy_list ; 
 int /*<<< orphan*/  phy_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct usb_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_phy*) ; 

int FUNC7(struct usb_phy *x)
{
	unsigned long flags;
	int ret;

	if (!x->dev) {
		FUNC1(x->dev, "no device provided for PHY\n");
		return -EINVAL;
	}

	FUNC6(x);
	ret = FUNC5(x);
	if (ret)
		return ret;

	FUNC0(&x->notifier);

	FUNC3(&phy_lock, flags);
	FUNC2(&x->head, &phy_list);
	FUNC4(&phy_lock, flags);

	return 0;
}