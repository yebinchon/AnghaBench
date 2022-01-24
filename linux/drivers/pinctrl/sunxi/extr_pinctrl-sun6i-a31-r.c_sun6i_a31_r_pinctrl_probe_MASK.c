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
struct reset_control {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct reset_control* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct reset_control*) ; 
 int FUNC5 (struct reset_control*) ; 
 int /*<<< orphan*/  sun6i_a31_r_pinctrl_data ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct reset_control *rstc;
	int ret;

	rstc = FUNC3(&pdev->dev, NULL);
	if (FUNC0(rstc)) {
		FUNC2(&pdev->dev, "Reset controller missing\n");
		return FUNC1(rstc);
	}

	ret = FUNC5(rstc);
	if (ret)
		return ret;

	ret = FUNC6(pdev,
				 &sun6i_a31_r_pinctrl_data);

	if (ret)
		FUNC4(rstc);

	return ret;
}