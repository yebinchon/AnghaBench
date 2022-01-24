#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct serdes_ctrl {TYPE_2__* dev; int /*<<< orphan*/ * phys; int /*<<< orphan*/  regs; } ;
struct TYPE_6__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct phy_provider {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_provider*) ; 
 unsigned int SERDES_MAX ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct serdes_ctrl*) ; 
 struct serdes_ctrl* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct serdes_ctrl*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  serdes_simple_xlate ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct phy_provider *provider;
	struct serdes_ctrl *ctrl;
	unsigned int i;
	int ret;

	ctrl = FUNC4(&pdev->dev, sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		return -ENOMEM;

	ctrl->dev = &pdev->dev;
	ctrl->regs = FUNC7(pdev->dev.parent->of_node);
	if (FUNC0(ctrl->regs))
		return FUNC1(ctrl->regs);

	for (i = 0; i < SERDES_MAX; i++) {
		ret = FUNC6(ctrl, i, &ctrl->phys[i]);
		if (ret)
			return ret;
	}

	FUNC3(&pdev->dev, ctrl);

	provider = FUNC5(ctrl->dev,
						 serdes_simple_xlate);

	return FUNC2(provider);
}