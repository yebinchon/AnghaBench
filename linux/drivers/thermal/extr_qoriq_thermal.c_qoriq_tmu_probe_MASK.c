#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qoriq_tmu_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; int /*<<< orphan*/  little_endian; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct qoriq_tmu_data* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct qoriq_tmu_data*) ; 
 int FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct qoriq_tmu_data*) ; 
 int FUNC12 (struct platform_device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int ret;
	struct qoriq_tmu_data *data;
	struct device_node *np = pdev->dev.of_node;

	data = FUNC6(&pdev->dev, sizeof(struct qoriq_tmu_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC9(pdev, data);

	data->little_endian = FUNC8(np, "little-endian");

	data->regs = FUNC7(pdev, 0);
	if (FUNC0(data->regs)) {
		FUNC4(&pdev->dev, "Failed to get memory region\n");
		return FUNC1(data->regs);
	}

	data->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(data->clk))
		return FUNC1(data->clk);

	ret = FUNC3(data->clk);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to enable clock\n");
		return ret;
	}

	FUNC11(data);	/* TMU initialization */

	ret = FUNC10(pdev);	/* TMU calibration */
	if (ret < 0)
		goto err;

	ret = FUNC12(pdev);
	if (ret < 0) {
		FUNC4(&pdev->dev, "Failed to register sensors\n");
		ret = -ENODEV;
		goto err;
	}

	return 0;

err:
	FUNC2(data->clk);
	FUNC9(pdev, NULL);

	return ret;
}