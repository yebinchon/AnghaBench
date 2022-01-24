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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct arche_apb_ctrl_drvdata {int init_disabled; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHE_PLATFORM_STATE_OFF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct platform_device*,struct arche_apb_ctrl_drvdata*) ; 
 int /*<<< orphan*/  dev_attr_state ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct arche_apb_ctrl_drvdata* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct arche_apb_ctrl_drvdata*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int ret;
	struct arche_apb_ctrl_drvdata *apb;
	struct device *dev = &pdev->dev;

	apb = FUNC4(&pdev->dev, sizeof(*apb), GFP_KERNEL);
	if (!apb)
		return -ENOMEM;

	ret = FUNC0(pdev, apb);
	if (ret) {
		FUNC1(dev, "failed to get apb devicetree data %d\n", ret);
		return ret;
	}

	/* Initially set APB to OFF state */
	apb->state = ARCHE_PLATFORM_STATE_OFF;
	/* Check whether device needs to be enabled on boot */
	if (FUNC5(pdev->dev.of_node, "arche,init-disable"))
		apb->init_disabled = true;

	FUNC6(pdev, apb);

	/* Create sysfs interface to allow user to change state dynamically */
	ret = FUNC3(dev, &dev_attr_state);
	if (ret) {
		FUNC1(dev, "failed to create state file in sysfs\n");
		return ret;
	}

	FUNC2(&pdev->dev, "Device registered successfully\n");
	return 0;
}