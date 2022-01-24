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
struct aspeed_lpc_ctrl {int /*<<< orphan*/  clk; TYPE_2__ miscdev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  mem_base; void* mem_size; int /*<<< orphan*/  pnor_base; void* pnor_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aspeed_lpc_ctrl_fops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct aspeed_lpc_ctrl*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 struct aspeed_lpc_ctrl* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (struct device_node*,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct aspeed_lpc_ctrl *lpc_ctrl;
	struct device_node *node;
	struct resource resm;
	struct device *dev;
	int rc;

	dev = &pdev->dev;

	lpc_ctrl = FUNC8(dev, sizeof(*lpc_ctrl), GFP_KERNEL);
	if (!lpc_ctrl)
		return -ENOMEM;

	/* If flash is described in device tree then store */
	node = FUNC12(dev->of_node, "flash", 0);
	if (!node) {
		FUNC4(dev, "Didn't find host pnor flash node\n");
	} else {
		rc = FUNC10(node, 1, &resm);
		FUNC11(node);
		if (rc) {
			FUNC5(dev, "Couldn't address to resource for flash\n");
			return rc;
		}

		lpc_ctrl->pnor_size = FUNC13(&resm);
		lpc_ctrl->pnor_base = resm.start;
	}


	FUNC6(&pdev->dev, lpc_ctrl);

	/* If memory-region is described in device tree then store */
	node = FUNC12(dev->of_node, "memory-region", 0);
	if (!node) {
		FUNC4(dev, "Didn't find reserved memory\n");
	} else {
		rc = FUNC10(node, 0, &resm);
		FUNC11(node);
		if (rc) {
			FUNC5(dev, "Couldn't address to resource for reserved memory\n");
			return -ENXIO;
		}

		lpc_ctrl->mem_size = FUNC13(&resm);
		lpc_ctrl->mem_base = resm.start;
	}

	lpc_ctrl->regmap = FUNC14(
			pdev->dev.parent->of_node);
	if (FUNC0(lpc_ctrl->regmap)) {
		FUNC5(dev, "Couldn't get regmap\n");
		return -ENODEV;
	}

	lpc_ctrl->clk = FUNC7(dev, NULL);
	if (FUNC0(lpc_ctrl->clk)) {
		FUNC5(dev, "couldn't get clock\n");
		return FUNC1(lpc_ctrl->clk);
	}
	rc = FUNC3(lpc_ctrl->clk);
	if (rc) {
		FUNC5(dev, "couldn't enable clock\n");
		return rc;
	}

	lpc_ctrl->miscdev.minor = MISC_DYNAMIC_MINOR;
	lpc_ctrl->miscdev.name = DEVICE_NAME;
	lpc_ctrl->miscdev.fops = &aspeed_lpc_ctrl_fops;
	lpc_ctrl->miscdev.parent = dev;
	rc = FUNC9(&lpc_ctrl->miscdev);
	if (rc) {
		FUNC5(dev, "Unable to register device\n");
		goto err;
	}

	return 0;

err:
	FUNC2(lpc_ctrl->clk);
	return rc;
}