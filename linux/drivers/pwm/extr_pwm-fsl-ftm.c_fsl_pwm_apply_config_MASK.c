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
typedef  scalar_t__ u32 ;
struct pwm_state {scalar_t__ polarity; int /*<<< orphan*/  duty_cycle; int /*<<< orphan*/  period; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct fsl_pwm_periodcfg {scalar_t__ clk_select; unsigned int mod_period; scalar_t__ clk_ps; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct fsl_pwm_chip {int /*<<< orphan*/  regmap; struct fsl_pwm_periodcfg period; int /*<<< orphan*/ * clk; TYPE_1__ chip; } ;
typedef  enum fsl_pwm_clk { ____Placeholder_fsl_pwm_clk } fsl_pwm_clk ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FTM_CSC_ELSB ; 
 unsigned int FTM_CSC_MSB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTM_MOD ; 
 int /*<<< orphan*/  FTM_POL ; 
 int /*<<< orphan*/  FTM_SC ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FTM_SC_CLK_MASK ; 
 scalar_t__ FTM_SC_PS_MASK ; 
 scalar_t__ PWM_POLARITY_INVERSED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC7 (struct fsl_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_pwm_chip*,int /*<<< orphan*/ ,struct fsl_pwm_periodcfg*) ; 
 int /*<<< orphan*/  FUNC9 (struct fsl_pwm_chip*,struct pwm_device*) ; 
 scalar_t__ FUNC10 (struct fsl_pwm_chip*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct fsl_pwm_periodcfg*,struct fsl_pwm_periodcfg*) ; 
 int /*<<< orphan*/  FUNC12 (struct fsl_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct fsl_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC16(struct fsl_pwm_chip *fpc,
				struct pwm_device *pwm,
				const struct pwm_state *newstate)
{
	unsigned int duty;
	u32 reg_polarity;

	struct fsl_pwm_periodcfg periodcfg;
	bool do_write_period = false;

	if (!FUNC8(fpc, newstate->period, &periodcfg)) {
		FUNC6(fpc->chip.dev, "failed to calculate new period\n");
		return -EINVAL;
	}

	if (!FUNC9(fpc, pwm))
		do_write_period = true;
	/*
	 * The Freescale FTM controller supports only a single period for
	 * all PWM channels, therefore verify if the newly computed period
	 * is different than the current period being used. In such case
	 * we allow to change the period only if no other pwm is running.
	 */
	else if (!FUNC11(&fpc->period, &periodcfg)) {
		if (FUNC10(fpc, pwm)) {
			FUNC6(fpc->chip.dev,
				"Cannot change period for PWM %u, disable other PWMs first\n",
				pwm->hwpwm);
			return -EBUSY;
		}
		if (fpc->period.clk_select != periodcfg.clk_select) {
			int ret;
			enum fsl_pwm_clk oldclk = fpc->period.clk_select;
			enum fsl_pwm_clk newclk = periodcfg.clk_select;

			ret = FUNC5(fpc->clk[newclk]);
			if (ret)
				return ret;
			FUNC4(fpc->clk[oldclk]);
		}
		do_write_period = true;
	}

	FUNC12(fpc);

	if (do_write_period) {
		FUNC14(fpc->regmap, FTM_SC, FTM_SC_CLK_MASK,
				   FUNC3(periodcfg.clk_select));
		FUNC14(fpc->regmap, FTM_SC, FTM_SC_PS_MASK,
				   periodcfg.clk_ps);
		FUNC15(fpc->regmap, FTM_MOD, periodcfg.mod_period);

		fpc->period = periodcfg;
	}

	duty = FUNC7(fpc, newstate->duty_cycle);

	FUNC15(fpc->regmap, FUNC1(pwm->hwpwm),
		     FTM_CSC_MSB | FTM_CSC_ELSB);
	FUNC15(fpc->regmap, FUNC2(pwm->hwpwm), duty);

	reg_polarity = 0;
	if (newstate->polarity == PWM_POLARITY_INVERSED)
		reg_polarity = FUNC0(pwm->hwpwm);

	FUNC14(fpc->regmap, FTM_POL, FUNC0(pwm->hwpwm), reg_polarity);

	FUNC13(fpc);

	return 0;
}