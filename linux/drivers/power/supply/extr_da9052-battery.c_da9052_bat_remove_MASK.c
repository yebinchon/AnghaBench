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
struct platform_device {int dummy; } ;
struct da9052_battery {int /*<<< orphan*/  psy; int /*<<< orphan*/  da9052; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * da9052_bat_irq_bits ; 
 int /*<<< orphan*/  da9052_bat_irqs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct da9052_battery*) ; 
 struct da9052_battery* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int i;
	struct da9052_battery *bat = FUNC2(pdev);

	for (i = 0; i < FUNC0(da9052_bat_irqs); i++)
		FUNC1(bat->da9052, da9052_bat_irq_bits[i], bat);

	FUNC3(bat->psy);

	return 0;
}