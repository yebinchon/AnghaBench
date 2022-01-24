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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct stm32_pwm_lp {int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; TYPE_1__ chip; } ;
struct pwm_state {unsigned long long period; unsigned long long duty_cycle; int polarity; scalar_t__ enabled; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 unsigned long long NSEC_PER_SEC ; 
 int /*<<< orphan*/  STM32_LPTIM_ARR ; 
 int /*<<< orphan*/  STM32_LPTIM_CFGR ; 
 int /*<<< orphan*/  STM32_LPTIM_CMP ; 
 unsigned long long STM32_LPTIM_CMPOKCF_ARROKCF ; 
 int STM32_LPTIM_CMPOK_ARROK ; 
 int STM32_LPTIM_CNTSTRT ; 
 int /*<<< orphan*/  STM32_LPTIM_CR ; 
 unsigned long long STM32_LPTIM_ENABLE ; 
 int /*<<< orphan*/  STM32_LPTIM_ICR ; 
 int /*<<< orphan*/  STM32_LPTIM_ISR ; 
 unsigned long long STM32_LPTIM_MAX_ARR ; 
 int STM32_LPTIM_MAX_PRESCALER ; 
 int STM32_LPTIM_PRESC ; 
 int STM32_LPTIM_WAVPOL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct pwm_device*,struct pwm_state*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 struct stm32_pwm_lp* FUNC13 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC14(struct pwm_chip *chip, struct pwm_device *pwm,
			      const struct pwm_state *state)
{
	struct stm32_pwm_lp *priv = FUNC13(chip);
	unsigned long long prd, div, dty;
	struct pwm_state cstate;
	u32 val, mask, cfgr, presc = 0;
	bool reenable;
	int ret;

	FUNC8(pwm, &cstate);
	reenable = !cstate.enabled;

	if (!state->enabled) {
		if (cstate.enabled) {
			/* Disable LP timer */
			ret = FUNC12(priv->regmap, STM32_LPTIM_CR, 0);
			if (ret)
				return ret;
			/* disable clock to PWM counter */
			FUNC2(priv->clk);
		}
		return 0;
	}

	/* Calculate the period and prescaler value */
	div = (unsigned long long)FUNC4(priv->clk) * state->period;
	FUNC7(div, NSEC_PER_SEC);
	if (!div) {
		/* Clock is too slow to achieve requested period. */
		FUNC5(priv->chip.dev, "Can't reach %u ns\n",	state->period);
		return -EINVAL;
	}

	prd = div;
	while (div > STM32_LPTIM_MAX_ARR) {
		presc++;
		if ((1 << presc) > STM32_LPTIM_MAX_PRESCALER) {
			FUNC6(priv->chip.dev, "max prescaler exceeded\n");
			return -EINVAL;
		}
		div = prd >> presc;
	}
	prd = div;

	/* Calculate the duty cycle */
	dty = prd * state->duty_cycle;
	FUNC7(dty, state->period);

	if (!cstate.enabled) {
		/* enable clock to drive PWM counter */
		ret = FUNC3(priv->clk);
		if (ret)
			return ret;
	}

	ret = FUNC9(priv->regmap, STM32_LPTIM_CFGR, &cfgr);
	if (ret)
		goto err;

	if ((FUNC0(STM32_LPTIM_PRESC, cfgr) != presc) ||
	    (FUNC0(STM32_LPTIM_WAVPOL, cfgr) != state->polarity)) {
		val = FUNC1(STM32_LPTIM_PRESC, presc);
		val |= FUNC1(STM32_LPTIM_WAVPOL, state->polarity);
		mask = STM32_LPTIM_PRESC | STM32_LPTIM_WAVPOL;

		/* Must disable LP timer to modify CFGR */
		reenable = true;
		ret = FUNC12(priv->regmap, STM32_LPTIM_CR, 0);
		if (ret)
			goto err;

		ret = FUNC11(priv->regmap, STM32_LPTIM_CFGR, mask,
					 val);
		if (ret)
			goto err;
	}

	if (reenable) {
		/* Must (re)enable LP timer to modify CMP & ARR */
		ret = FUNC12(priv->regmap, STM32_LPTIM_CR,
				   STM32_LPTIM_ENABLE);
		if (ret)
			goto err;
	}

	ret = FUNC12(priv->regmap, STM32_LPTIM_ARR, prd - 1);
	if (ret)
		goto err;

	ret = FUNC12(priv->regmap, STM32_LPTIM_CMP, prd - (1 + dty));
	if (ret)
		goto err;

	/* ensure CMP & ARR registers are properly written */
	ret = FUNC10(priv->regmap, STM32_LPTIM_ISR, val,
				       (val & STM32_LPTIM_CMPOK_ARROK),
				       100, 1000);
	if (ret) {
		FUNC6(priv->chip.dev, "ARR/CMP registers write issue\n");
		goto err;
	}
	ret = FUNC12(priv->regmap, STM32_LPTIM_ICR,
			   STM32_LPTIM_CMPOKCF_ARROKCF);
	if (ret)
		goto err;

	if (reenable) {
		/* Start LP timer in continuous mode */
		ret = FUNC11(priv->regmap, STM32_LPTIM_CR,
					 STM32_LPTIM_CNTSTRT,
					 STM32_LPTIM_CNTSTRT);
		if (ret) {
			FUNC12(priv->regmap, STM32_LPTIM_CR, 0);
			goto err;
		}
	}

	return 0;
err:
	if (!cstate.enabled)
		FUNC2(priv->clk);

	return ret;
}