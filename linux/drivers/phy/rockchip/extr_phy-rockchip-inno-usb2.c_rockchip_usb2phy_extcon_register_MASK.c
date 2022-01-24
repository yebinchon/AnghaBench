#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rockchip_usb2phy {struct extcon_dev* edev; TYPE_1__* dev; } ;
struct extcon_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct extcon_dev*) ; 
 int FUNC1 (struct extcon_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct extcon_dev* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,struct extcon_dev*) ; 
 struct extcon_dev* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device_node*,char*) ; 
 int /*<<< orphan*/  rockchip_usb2phy_extcon_cable ; 

__attribute__((used)) static int FUNC7(struct rockchip_usb2phy *rphy)
{
	int ret;
	struct device_node *node = rphy->dev->of_node;
	struct extcon_dev *edev;

	if (FUNC6(node, "extcon")) {
		edev = FUNC5(rphy->dev, 0);
		if (FUNC0(edev)) {
			if (FUNC1(edev) != -EPROBE_DEFER)
				FUNC2(rphy->dev, "Invalid or missing extcon\n");
			return FUNC1(edev);
		}
	} else {
		/* Initialize extcon device */
		edev = FUNC3(rphy->dev,
						rockchip_usb2phy_extcon_cable);

		if (FUNC0(edev))
			return -ENOMEM;

		ret = FUNC4(rphy->dev, edev);
		if (ret) {
			FUNC2(rphy->dev, "failed to register extcon device\n");
			return ret;
		}
	}

	rphy->edev = edev;

	return 0;
}