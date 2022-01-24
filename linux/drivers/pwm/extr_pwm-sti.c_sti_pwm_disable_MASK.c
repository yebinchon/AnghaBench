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
struct sti_pwm_chip {int /*<<< orphan*/  sti_pwm_lock; int /*<<< orphan*/  cpt_clk; int /*<<< orphan*/  pwm_clk; int /*<<< orphan*/  pwm_out_en; scalar_t__ en_count; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sti_pwm_chip* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC5(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct sti_pwm_chip *pc = FUNC4(chip);

	FUNC1(&pc->sti_pwm_lock);

	if (--pc->en_count) {
		FUNC2(&pc->sti_pwm_lock);
		return;
	}

	FUNC3(pc->pwm_out_en, 0);

	FUNC0(pc->pwm_clk);
	FUNC0(pc->cpt_clk);

	FUNC2(&pc->sti_pwm_lock);
}