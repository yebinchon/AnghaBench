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
typedef  int u64 ;
typedef  int u32 ;
struct pwm_state {int enabled; void* duty_cycle; void* period; int /*<<< orphan*/  polarity; } ;
struct pwm_imx27_chip {scalar_t__ mmio_base; int /*<<< orphan*/  clk_per; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ MX3_PWMCR ; 
 int MX3_PWMCR_EN ; 
 int /*<<< orphan*/  MX3_PWMCR_POUTC ; 
#define  MX3_PWMCR_POUTC_INVERTED 129 
#define  MX3_PWMCR_POUTC_NORMAL 128 
 int FUNC2 (int) ; 
 scalar_t__ MX3_PWMPR ; 
 int MX3_PWMPR_MAX ; 
 scalar_t__ MX3_PWMSAR ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  PWM_POLARITY_INVERSED ; 
 int /*<<< orphan*/  PWM_POLARITY_NORMAL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_chip*) ; 
 int FUNC6 (struct pwm_chip*) ; 
 int FUNC7 (scalar_t__) ; 
 struct pwm_imx27_chip* FUNC8 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC9(struct pwm_chip *chip,
				struct pwm_device *pwm, struct pwm_state *state)
{
	struct pwm_imx27_chip *imx = FUNC8(chip);
	u32 period, prescaler, pwm_clk, val;
	u64 tmp;
	int ret;

	ret = FUNC6(chip);
	if (ret < 0)
		return;

	val = FUNC7(imx->mmio_base + MX3_PWMCR);

	if (val & MX3_PWMCR_EN)
		state->enabled = true;
	else
		state->enabled = false;

	switch (FUNC1(MX3_PWMCR_POUTC, val)) {
	case MX3_PWMCR_POUTC_NORMAL:
		state->polarity = PWM_POLARITY_NORMAL;
		break;
	case MX3_PWMCR_POUTC_INVERTED:
		state->polarity = PWM_POLARITY_INVERSED;
		break;
	default:
		FUNC4(chip->dev, "can't set polarity, output disconnected");
	}

	prescaler = FUNC2(val);
	pwm_clk = FUNC3(imx->clk_per);
	pwm_clk = FUNC0(pwm_clk, prescaler);
	val = FUNC7(imx->mmio_base + MX3_PWMPR);
	period = val >= MX3_PWMPR_MAX ? MX3_PWMPR_MAX : val;

	/* PWMOUT (Hz) = PWMCLK / (PWMPR + 2) */
	tmp = NSEC_PER_SEC * (u64)(period + 2);
	state->period = FUNC0(tmp, pwm_clk);

	/* PWMSAR can be read only if PWM is enabled */
	if (state->enabled) {
		val = FUNC7(imx->mmio_base + MX3_PWMSAR);
		tmp = NSEC_PER_SEC * (u64)(val);
		state->duty_cycle = FUNC0(tmp, pwm_clk);
	} else {
		state->duty_cycle = 0;
	}

	if (!state->enabled)
		FUNC5(chip);
}