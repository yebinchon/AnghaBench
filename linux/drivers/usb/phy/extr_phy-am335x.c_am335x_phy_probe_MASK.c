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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  shutdown; int /*<<< orphan*/  init; } ;
struct TYPE_3__ {TYPE_2__ phy; } ;
struct am335x_phy {scalar_t__ id; TYPE_1__ usb_phy_gen; int /*<<< orphan*/  dr_mode; int /*<<< orphan*/  phy_ctrl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  am335x_init ; 
 int /*<<< orphan*/  am335x_shutdown ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 struct am335x_phy* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct am335x_phy*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (struct device*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct am335x_phy *am_phy;
	struct device *dev = &pdev->dev;
	int ret;

	am_phy = FUNC4(dev, sizeof(*am_phy), GFP_KERNEL);
	if (!am_phy)
		return -ENOMEM;

	am_phy->phy_ctrl = FUNC0(dev);
	if (!am_phy->phy_ctrl)
		return -EPROBE_DEFER;

	am_phy->id = FUNC5(pdev->dev.of_node, "phy");
	if (am_phy->id < 0) {
		FUNC1(&pdev->dev, "Missing PHY id: %d\n", am_phy->id);
		return am_phy->id;
	}

	am_phy->dr_mode = FUNC6(pdev->dev.of_node, -1);

	ret = FUNC10(dev, &am_phy->usb_phy_gen, NULL);
	if (ret)
		return ret;

	am_phy->usb_phy_gen.phy.init = am335x_init;
	am_phy->usb_phy_gen.phy.shutdown = am335x_shutdown;

	FUNC8(pdev, am_phy);
	FUNC2(dev, true);

	/*
	 * If we leave PHY wakeup enabled then AM33XX wakes up
	 * immediately from DS0. To avoid this we mark dev->power.can_wakeup
	 * to false. The same is checked in suspend routine to decide
	 * on whether to enable PHY wakeup or not.
	 * PHY wakeup works fine in standby mode, there by allowing us to
	 * handle remote wakeup, wakeup on disconnect and connect.
	 */

	FUNC3(dev, false);
	FUNC7(am_phy->phy_ctrl, am_phy->id, am_phy->dr_mode, false);

	return FUNC9(&am_phy->usb_phy_gen.phy);
}