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
struct resource {int /*<<< orphan*/  start; } ;
struct qcom_slim_ctrl {int /*<<< orphan*/  slew_reg; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev,
				struct qcom_slim_ctrl *ctrl)
{
	struct resource	*slew_mem;

	if (!ctrl->slew_reg) {
		/* SLEW RATE register for this SLIMbus */
		slew_mem = FUNC1(pdev, IORESOURCE_MEM,
				"slew");
		ctrl->slew_reg = FUNC0(&pdev->dev, slew_mem->start,
				FUNC2(slew_mem));
		if (!ctrl->slew_reg)
			return;
	}

	FUNC4(1, ctrl->slew_reg);
	/* Make sure SLIMbus-slew rate enabling goes through */
	FUNC3();
}