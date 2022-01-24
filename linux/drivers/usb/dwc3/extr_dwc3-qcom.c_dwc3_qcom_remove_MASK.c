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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dwc3_qcom {int num_clocks; int /*<<< orphan*/  resets; int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct dwc3_qcom* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct dwc3_qcom *qcom = FUNC3(pdev);
	struct device *dev = &pdev->dev;
	int i;

	FUNC2(dev);

	for (i = qcom->num_clocks - 1; i >= 0; i--) {
		FUNC0(qcom->clks[i]);
		FUNC1(qcom->clks[i]);
	}
	qcom->num_clocks = 0;

	FUNC6(qcom->resets);

	FUNC4(dev);
	FUNC5(dev);

	return 0;
}