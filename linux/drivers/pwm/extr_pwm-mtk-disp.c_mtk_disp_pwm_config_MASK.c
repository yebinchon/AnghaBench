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
typedef  int u64 ;
typedef  int u32 ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct mtk_disp_pwm {int /*<<< orphan*/  clk_main; int /*<<< orphan*/  clk_mm; TYPE_1__* data; } ;
struct TYPE_2__ {int commit_mask; int /*<<< orphan*/  commit; scalar_t__ has_commit; int /*<<< orphan*/  con1; int /*<<< orphan*/  con0; } ;

/* Variables and functions */
 int EINVAL ; 
 int NSEC_PER_SEC ; 
 int PWM_CLKDIV_MASK ; 
 int PWM_CLKDIV_MAX ; 
 int PWM_CLKDIV_SHIFT ; 
 int PWM_HIGH_WIDTH_MASK ; 
 int PWM_HIGH_WIDTH_SHIFT ; 
 int PWM_PERIOD_BIT_WIDTH ; 
 int PWM_PERIOD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_disp_pwm*,int /*<<< orphan*/ ,int,int) ; 
 struct mtk_disp_pwm* FUNC6 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC7(struct pwm_chip *chip, struct pwm_device *pwm,
			       int duty_ns, int period_ns)
{
	struct mtk_disp_pwm *mdp = FUNC6(chip);
	u32 clk_div, period, high_width, value;
	u64 div, rate;
	int err;

	/*
	 * Find period, high_width and clk_div to suit duty_ns and period_ns.
	 * Calculate proper div value to keep period value in the bound.
	 *
	 * period_ns = 10^9 * (clk_div + 1) * (period + 1) / PWM_CLK_RATE
	 * duty_ns = 10^9 * (clk_div + 1) * high_width / PWM_CLK_RATE
	 *
	 * period = (PWM_CLK_RATE * period_ns) / (10^9 * (clk_div + 1)) - 1
	 * high_width = (PWM_CLK_RATE * duty_ns) / (10^9 * (clk_div + 1))
	 */
	rate = FUNC2(mdp->clk_main);
	clk_div = FUNC4(rate * period_ns, NSEC_PER_SEC) >>
			  PWM_PERIOD_BIT_WIDTH;
	if (clk_div > PWM_CLKDIV_MAX)
		return -EINVAL;

	div = NSEC_PER_SEC * (clk_div + 1);
	period = FUNC3(rate * period_ns, div);
	if (period > 0)
		period--;

	high_width = FUNC3(rate * duty_ns, div);
	value = period | (high_width << PWM_HIGH_WIDTH_SHIFT);

	err = FUNC1(mdp->clk_main);
	if (err < 0)
		return err;

	err = FUNC1(mdp->clk_mm);
	if (err < 0) {
		FUNC0(mdp->clk_main);
		return err;
	}

	FUNC5(mdp, mdp->data->con0,
				 PWM_CLKDIV_MASK,
				 clk_div << PWM_CLKDIV_SHIFT);
	FUNC5(mdp, mdp->data->con1,
				 PWM_PERIOD_MASK | PWM_HIGH_WIDTH_MASK,
				 value);

	if (mdp->data->has_commit) {
		FUNC5(mdp, mdp->data->commit,
					 mdp->data->commit_mask,
					 mdp->data->commit_mask);
		FUNC5(mdp, mdp->data->commit,
					 mdp->data->commit_mask,
					 0x0);
	}

	FUNC0(mdp->clk_mm);
	FUNC0(mdp->clk_main);

	return 0;
}