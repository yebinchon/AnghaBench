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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun50i_h5_pinctrl_data ; 
 int /*<<< orphan*/  sun50i_h5_pinctrl_data_broken ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	switch (FUNC1(pdev->dev.of_node)) {
	case 2:
		FUNC0(&pdev->dev,
			 "Your device tree's pinctrl node is broken, which has no IRQ of PG bank routed.\n");
		FUNC0(&pdev->dev,
			 "Please update the device tree, otherwise PG bank IRQ won't work.\n");
		return FUNC2(pdev,
					  &sun50i_h5_pinctrl_data_broken);
	case 3:
		return FUNC2(pdev,
					  &sun50i_h5_pinctrl_data);
	default:
		return -EINVAL;
	}
}