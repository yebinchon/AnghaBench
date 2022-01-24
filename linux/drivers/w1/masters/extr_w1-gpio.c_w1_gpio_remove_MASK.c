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
struct w1_gpio_platform_data {scalar_t__ pullup_gpiod; int /*<<< orphan*/  (* enable_external_pullup ) (int /*<<< orphan*/ ) ;} ;
struct w1_bus_master {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct w1_gpio_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct w1_bus_master* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct w1_bus_master*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct w1_bus_master *master = FUNC2(pdev);
	struct w1_gpio_platform_data *pdata = FUNC0(&pdev->dev);

	if (pdata->enable_external_pullup)
		pdata->enable_external_pullup(0);

	if (pdata->pullup_gpiod)
		FUNC1(pdata->pullup_gpiod, 0);

	FUNC4(master);

	return 0;
}