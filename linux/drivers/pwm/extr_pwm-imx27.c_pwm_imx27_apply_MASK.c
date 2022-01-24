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
typedef  unsigned long u32 ;
struct pwm_state {unsigned long long period; unsigned long long duty_cycle; scalar_t__ polarity; scalar_t__ enabled; } ;
struct pwm_imx27_chip {scalar_t__ mmio_base; int /*<<< orphan*/  clk_per; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MX3_PWMCR ; 
 int /*<<< orphan*/  MX3_PWMCR_CLKSRC ; 
 int /*<<< orphan*/  MX3_PWMCR_CLKSRC_IPG_HIGH ; 
 unsigned long MX3_PWMCR_DBGEN ; 
 unsigned long MX3_PWMCR_DOZEN ; 
 unsigned long MX3_PWMCR_EN ; 
 int /*<<< orphan*/  MX3_PWMCR_POUTC ; 
 int /*<<< orphan*/  MX3_PWMCR_POUTC_INVERTED ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long MX3_PWMCR_STOPEN ; 
 unsigned long MX3_PWMCR_WAITEN ; 
 scalar_t__ MX3_PWMPR ; 
 scalar_t__ MX3_PWMSAR ; 
 scalar_t__ PWM_POLARITY_INVERSED ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device*,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_chip*) ; 
 int FUNC6 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct pwm_chip*,struct pwm_device*) ; 
 struct pwm_imx27_chip* FUNC9 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct pwm_chip *chip, struct pwm_device *pwm,
			   const struct pwm_state *state)
{
	unsigned long period_cycles, duty_cycles, prescale;
	struct pwm_imx27_chip *imx = FUNC9(chip);
	struct pwm_state cstate;
	unsigned long long c;
	int ret;
	u32 cr;

	FUNC4(pwm, &cstate);

	if (state->enabled) {
		c = FUNC2(imx->clk_per);
		c *= state->period;

		FUNC3(c, 1000000000);
		period_cycles = c;

		prescale = period_cycles / 0x10000 + 1;

		period_cycles /= prescale;
		c = (unsigned long long)period_cycles * state->duty_cycle;
		FUNC3(c, state->period);
		duty_cycles = c;

		/*
		 * according to imx pwm RM, the real period value should be
		 * PERIOD value in PWMPR plus 2.
		 */
		if (period_cycles > 2)
			period_cycles -= 2;
		else
			period_cycles = 0;

		/*
		 * Wait for a free FIFO slot if the PWM is already enabled, and
		 * flush the FIFO if the PWM was disabled and is about to be
		 * enabled.
		 */
		if (cstate.enabled) {
			FUNC8(chip, pwm);
		} else {
			ret = FUNC6(chip);
			if (ret)
				return ret;

			FUNC7(chip);
		}

		FUNC10(duty_cycles, imx->mmio_base + MX3_PWMSAR);
		FUNC10(period_cycles, imx->mmio_base + MX3_PWMPR);

		cr = FUNC1(prescale) |
		     MX3_PWMCR_STOPEN | MX3_PWMCR_DOZEN | MX3_PWMCR_WAITEN |
		     FUNC0(MX3_PWMCR_CLKSRC, MX3_PWMCR_CLKSRC_IPG_HIGH) |
		     MX3_PWMCR_DBGEN | MX3_PWMCR_EN;

		if (state->polarity == PWM_POLARITY_INVERSED)
			cr |= FUNC0(MX3_PWMCR_POUTC,
					MX3_PWMCR_POUTC_INVERTED);

		FUNC10(cr, imx->mmio_base + MX3_PWMCR);
	} else if (cstate.enabled) {
		FUNC10(0, imx->mmio_base + MX3_PWMCR);

		FUNC5(chip);
	}

	return 0;
}