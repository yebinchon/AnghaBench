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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct aspeed_lpc_ctrl {int /*<<< orphan*/  clk; int /*<<< orphan*/  miscdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct aspeed_lpc_ctrl* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct aspeed_lpc_ctrl *lpc_ctrl = FUNC1(&pdev->dev);

	FUNC2(&lpc_ctrl->miscdev);
	FUNC0(lpc_ctrl->clk);

	return 0;
}