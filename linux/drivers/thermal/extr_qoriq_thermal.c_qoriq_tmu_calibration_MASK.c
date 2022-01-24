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
typedef  int u32 ;
struct qoriq_tmu_data {TYPE_1__* regs; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tscfgr; int /*<<< orphan*/  ttcfgr; int /*<<< orphan*/  ttr3cr; int /*<<< orphan*/  ttr2cr; int /*<<< orphan*/  ttr1cr; int /*<<< orphan*/  ttr0cr; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int* FUNC1 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int*,int) ; 
 int FUNC3 (int const*,int) ; 
 struct qoriq_tmu_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct qoriq_tmu_data*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int i, val, len;
	u32 range[4];
	const u32 *calibration;
	struct device_node *np = pdev->dev.of_node;
	struct qoriq_tmu_data *data = FUNC4(pdev);

	if (FUNC2(np, "fsl,tmu-range", range, 4)) {
		FUNC0(&pdev->dev, "missing calibration range.\n");
		return -ENODEV;
	}

	/* Init temperature range registers */
	FUNC5(data, range[0], &data->regs->ttr0cr);
	FUNC5(data, range[1], &data->regs->ttr1cr);
	FUNC5(data, range[2], &data->regs->ttr2cr);
	FUNC5(data, range[3], &data->regs->ttr3cr);

	calibration = FUNC1(np, "fsl,tmu-calibration", &len);
	if (calibration == NULL || len % 8) {
		FUNC0(&pdev->dev, "invalid calibration data.\n");
		return -ENODEV;
	}

	for (i = 0; i < len; i += 8, calibration += 2) {
		val = FUNC3(calibration, 1);
		FUNC5(data, val, &data->regs->ttcfgr);
		val = FUNC3(calibration + 1, 1);
		FUNC5(data, val, &data->regs->tscfgr);
	}

	return 0;
}