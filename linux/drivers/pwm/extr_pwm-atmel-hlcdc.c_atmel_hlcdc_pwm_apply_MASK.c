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
struct pwm_state {int duty_cycle; int period; scalar_t__ polarity; scalar_t__ enabled; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct clk {int dummy; } ;
struct atmel_hlcdc_pwm {struct clk* cur_clk; TYPE_1__* errata; struct atmel_hlcdc* hlcdc; } ;
struct atmel_hlcdc {int /*<<< orphan*/  regmap; struct clk* sys_clk; struct clk* slow_clk; } ;
struct TYPE_2__ {scalar_t__ div1_clk_erratum; scalar_t__ slow_clk_erratum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ATMEL_HLCDC_CLKPWMSEL ; 
 int /*<<< orphan*/  ATMEL_HLCDC_DIS ; 
 int /*<<< orphan*/  ATMEL_HLCDC_EN ; 
 unsigned int ATMEL_HLCDC_PWM ; 
 int FUNC1 (int) ; 
 int ATMEL_HLCDC_PWMCVAL_MASK ; 
 int ATMEL_HLCDC_PWMPOL ; 
 int FUNC2 (int) ; 
 int ATMEL_HLCDC_PWMPS_MASK ; 
 int ATMEL_HLCDC_PWMPS_MAX ; 
 int /*<<< orphan*/  ATMEL_HLCDC_SR ; 
 int EINVAL ; 
 scalar_t__ NSEC_PER_SEC ; 
 scalar_t__ PWM_POLARITY_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 unsigned long FUNC4 (struct clk*) ; 
 int FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct atmel_hlcdc_pwm* FUNC10 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC11(struct pwm_chip *c, struct pwm_device *pwm,
				 const struct pwm_state *state)
{
	struct atmel_hlcdc_pwm *chip = FUNC10(c);
	struct atmel_hlcdc *hlcdc = chip->hlcdc;
	unsigned int status;
	int ret;

	if (state->enabled) {
		struct clk *new_clk = hlcdc->slow_clk;
		u64 pwmcval = state->duty_cycle * 256;
		unsigned long clk_freq;
		u64 clk_period_ns;
		u32 pwmcfg;
		int pres;

		if (!chip->errata || !chip->errata->slow_clk_erratum) {
			clk_freq = FUNC4(new_clk);
			if (!clk_freq)
				return -EINVAL;

			clk_period_ns = (u64)NSEC_PER_SEC * 256;
			FUNC6(clk_period_ns, clk_freq);
		}

		/* Errata: cannot use slow clk on some IP revisions */
		if ((chip->errata && chip->errata->slow_clk_erratum) ||
		    clk_period_ns > state->period) {
			new_clk = hlcdc->sys_clk;
			clk_freq = FUNC4(new_clk);
			if (!clk_freq)
				return -EINVAL;

			clk_period_ns = (u64)NSEC_PER_SEC * 256;
			FUNC6(clk_period_ns, clk_freq);
		}

		for (pres = 0; pres <= ATMEL_HLCDC_PWMPS_MAX; pres++) {
		/* Errata: cannot divide by 1 on some IP revisions */
			if (!pres && chip->errata &&
			    chip->errata->div1_clk_erratum)
				continue;

			if ((clk_period_ns << pres) >= state->period)
				break;
		}

		if (pres > ATMEL_HLCDC_PWMPS_MAX)
			return -EINVAL;

		pwmcfg = FUNC2(pres);

		if (new_clk != chip->cur_clk) {
			u32 gencfg = 0;
			int ret;

			ret = FUNC5(new_clk);
			if (ret)
				return ret;

			FUNC3(chip->cur_clk);
			chip->cur_clk = new_clk;

			if (new_clk == hlcdc->sys_clk)
				gencfg = ATMEL_HLCDC_CLKPWMSEL;

			ret = FUNC8(hlcdc->regmap,
						 FUNC0(0),
						 ATMEL_HLCDC_CLKPWMSEL,
						 gencfg);
			if (ret)
				return ret;
		}

		FUNC6(pwmcval, state->period);

		/*
		 * The PWM duty cycle is configurable from 0/256 to 255/256 of
		 * the period cycle. Hence we can't set a duty cycle occupying
		 * the whole period cycle if we're asked to.
		 * Set it to 255 if pwmcval is greater than 256.
		 */
		if (pwmcval > 255)
			pwmcval = 255;

		pwmcfg |= FUNC1(pwmcval);

		if (state->polarity == PWM_POLARITY_NORMAL)
			pwmcfg |= ATMEL_HLCDC_PWMPOL;

		ret = FUNC8(hlcdc->regmap, FUNC0(6),
					 ATMEL_HLCDC_PWMCVAL_MASK |
					 ATMEL_HLCDC_PWMPS_MASK |
					 ATMEL_HLCDC_PWMPOL,
					 pwmcfg);
		if (ret)
			return ret;

		ret = FUNC9(hlcdc->regmap, ATMEL_HLCDC_EN,
				   ATMEL_HLCDC_PWM);
		if (ret)
			return ret;

		ret = FUNC7(hlcdc->regmap, ATMEL_HLCDC_SR,
					       status,
					       status & ATMEL_HLCDC_PWM,
					       10, 0);
		if (ret)
			return ret;
	} else {
		ret = FUNC9(hlcdc->regmap, ATMEL_HLCDC_DIS,
				   ATMEL_HLCDC_PWM);
		if (ret)
			return ret;

		ret = FUNC7(hlcdc->regmap, ATMEL_HLCDC_SR,
					       status,
					       !(status & ATMEL_HLCDC_PWM),
					       10, 0);
		if (ret)
			return ret;

		FUNC3(chip->cur_clk);
		chip->cur_clk = NULL;
	}

	return 0;
}