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
struct dwc3_of_simple {int /*<<< orphan*/  resets; int /*<<< orphan*/  pulse_resets; scalar_t__ num_clocks; int /*<<< orphan*/  clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct dwc3_of_simple* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct dwc3_of_simple	*simple = FUNC3(pdev);
	struct device		*dev = &pdev->dev;

	FUNC2(dev);

	FUNC0(simple->num_clocks, simple->clks);
	FUNC1(simple->num_clocks, simple->clks);
	simple->num_clocks = 0;

	if (!simple->pulse_resets)
		FUNC7(simple->resets);

	FUNC8(simple->resets);

	FUNC4(dev);
	FUNC5(dev);
	FUNC6(dev);

	return 0;
}