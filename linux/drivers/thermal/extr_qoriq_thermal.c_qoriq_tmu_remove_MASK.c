#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qoriq_tmu_data {int /*<<< orphan*/  clk; TYPE_1__* regs; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tmr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TMR_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qoriq_tmu_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qoriq_tmu_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct qoriq_tmu_data *data = FUNC1(pdev);

	/* Disable monitoring */
	FUNC3(data, TMR_DISABLE, &data->regs->tmr);

	FUNC0(data->clk);

	FUNC2(pdev, NULL);

	return 0;
}