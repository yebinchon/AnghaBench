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
struct TYPE_2__ {int /*<<< orphan*/ * pwms; } ;
struct spear_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  clk; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int NUM_PWM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spear_pwm_chip* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct spear_pwm_chip *pc = FUNC1(pdev);
	int i;

	for (i = 0; i < NUM_PWM; i++)
		FUNC2(&pc->chip.pwms[i]);

	/* clk was prepared in probe, hence unprepare it here */
	FUNC0(pc->clk);
	return FUNC3(&pc->chip);
}