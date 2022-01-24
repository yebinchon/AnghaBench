#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct virtual_consumer_data {int /*<<< orphan*/  regulator; int /*<<< orphan*/  mode; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 char* FUNC3 (TYPE_1__*) ; 
 struct virtual_consumer_data* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct virtual_consumer_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  regulator_virtual_attr_group ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	char *reg_id = FUNC3(&pdev->dev);
	struct virtual_consumer_data *drvdata;
	int ret;

	drvdata = FUNC4(&pdev->dev, sizeof(struct virtual_consumer_data),
			       GFP_KERNEL);
	if (drvdata == NULL)
		return -ENOMEM;

	FUNC6(&drvdata->lock);

	drvdata->regulator = FUNC5(&pdev->dev, reg_id);
	if (FUNC0(drvdata->regulator)) {
		ret = FUNC1(drvdata->regulator);
		FUNC2(&pdev->dev, "Failed to obtain supply '%s': %d\n",
			reg_id, ret);
		return ret;
	}

	ret = FUNC9(&pdev->dev.kobj,
				 &regulator_virtual_attr_group);
	if (ret != 0) {
		FUNC2(&pdev->dev,
			"Failed to create attribute group: %d\n", ret);
		return ret;
	}

	drvdata->mode = FUNC8(drvdata->regulator);

	FUNC7(pdev, drvdata);

	return 0;
}