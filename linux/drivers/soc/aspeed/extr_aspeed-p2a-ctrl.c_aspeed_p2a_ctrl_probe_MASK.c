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
struct resource {int /*<<< orphan*/  start; } ;
struct device {TYPE_1__* parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device* parent; int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; } ;
struct aspeed_p2a_ctrl {TYPE_2__ miscdev; int /*<<< orphan*/  config; int /*<<< orphan*/  regmap; int /*<<< orphan*/  mem_base; int /*<<< orphan*/  mem_size; int /*<<< orphan*/  tracking; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  aspeed_p2a_ctrl_fops ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_p2a_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct aspeed_p2a_ctrl*) ; 
 struct aspeed_p2a_ctrl* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct aspeed_p2a_ctrl *misc_ctrl;
	struct device *dev;
	struct resource resm;
	struct device_node *node;
	int rc = 0;

	dev = &pdev->dev;

	misc_ctrl = FUNC4(dev, sizeof(*misc_ctrl), GFP_KERNEL);
	if (!misc_ctrl)
		return -ENOMEM;

	FUNC6(&misc_ctrl->tracking);

	/* optional. */
	node = FUNC10(dev->of_node, "memory-region", 0);
	if (node) {
		rc = FUNC7(node, 0, &resm);
		FUNC9(node);
		if (rc) {
			FUNC2(dev, "Couldn't address to resource for reserved memory\n");
			return -ENODEV;
		}

		misc_ctrl->mem_size = FUNC11(&resm);
		misc_ctrl->mem_base = resm.start;
	}

	misc_ctrl->regmap = FUNC12(pdev->dev.parent->of_node);
	if (FUNC0(misc_ctrl->regmap)) {
		FUNC2(dev, "Couldn't get regmap\n");
		return -ENODEV;
	}

	misc_ctrl->config = FUNC8(dev);

	FUNC3(&pdev->dev, misc_ctrl);

	FUNC1(misc_ctrl);

	misc_ctrl->miscdev.minor = MISC_DYNAMIC_MINOR;
	misc_ctrl->miscdev.name = DEVICE_NAME;
	misc_ctrl->miscdev.fops = &aspeed_p2a_ctrl_fops;
	misc_ctrl->miscdev.parent = dev;

	rc = FUNC5(&misc_ctrl->miscdev);
	if (rc)
		FUNC2(dev, "Unable to register device\n");

	return rc;
}