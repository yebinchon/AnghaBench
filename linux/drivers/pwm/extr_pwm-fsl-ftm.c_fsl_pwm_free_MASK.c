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
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct fsl_pwm_chip {int /*<<< orphan*/  ipg_clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ has_enable_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FTM_SC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsl_pwm_chip* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC6(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct fsl_pwm_chip *fpc = FUNC5(chip);

	if (fpc->soc->has_enable_bits) {
		FUNC2(&fpc->lock);
		FUNC4(fpc->regmap, FTM_SC, FUNC0(pwm->hwpwm + 16),
				   0);
		FUNC3(&fpc->lock);
	}

	FUNC1(fpc->ipg_clk);
}