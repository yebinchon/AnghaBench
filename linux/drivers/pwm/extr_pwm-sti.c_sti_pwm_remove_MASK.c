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
struct TYPE_4__ {int /*<<< orphan*/ * pwms; } ;
struct sti_pwm_chip {TYPE_2__ chip; int /*<<< orphan*/  cpt_clk; int /*<<< orphan*/  pwm_clk; TYPE_1__* cdata; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {unsigned int pwm_num_devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sti_pwm_chip* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct sti_pwm_chip *pc = FUNC1(pdev);
	unsigned int i;

	for (i = 0; i < pc->cdata->pwm_num_devs; i++)
		FUNC2(&pc->chip.pwms[i]);

	FUNC0(pc->pwm_clk);
	FUNC0(pc->cpt_clk);

	return FUNC3(&pc->chip);
}