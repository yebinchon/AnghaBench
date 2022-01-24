#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_phy {TYPE_2__* dev; } ;
struct phy_devm {struct notifier_block* nb; struct usb_phy* phy; } ;
struct notifier_block {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct usb_phy*) ; 
 struct usb_phy* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  devm_usb_phy_release2 ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct phy_devm*) ; 
 struct phy_devm* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_devm*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  phy_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_phy*,struct notifier_block*) ; 

struct  usb_phy *FUNC12(struct device *dev,
					  struct device_node *node,
					  struct notifier_block *nb)
{
	struct usb_phy	*phy = FUNC0(-ENOMEM);
	struct phy_devm	*ptr;
	unsigned long	flags;

	ptr = FUNC5(devm_usb_phy_release2, sizeof(*ptr), GFP_KERNEL);
	if (!ptr) {
		FUNC3(dev, "failed to allocate memory for devres\n");
		goto err0;
	}

	FUNC8(&phy_lock, flags);

	phy = FUNC2(node);
	if (FUNC1(phy)) {
		FUNC6(ptr);
		goto err1;
	}

	if (!FUNC10(phy->dev->driver->owner)) {
		phy = FUNC0(-ENODEV);
		FUNC6(ptr);
		goto err1;
	}
	if (nb)
		FUNC11(phy, nb);
	ptr->phy = phy;
	ptr->nb = nb;
	FUNC4(dev, ptr);

	FUNC7(phy->dev);

err1:
	FUNC9(&phy_lock, flags);

err0:

	return phy;
}