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
struct stm32_pwm_lp {int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk; } ;
struct pwm_state {int enabled; void* duty_cycle; void* period; void* polarity; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int,unsigned long) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  STM32_LPTIM_ARR ; 
 int /*<<< orphan*/  STM32_LPTIM_CFGR ; 
 int /*<<< orphan*/  STM32_LPTIM_CMP ; 
 int /*<<< orphan*/  STM32_LPTIM_CR ; 
 int /*<<< orphan*/  STM32_LPTIM_ENABLE ; 
 int /*<<< orphan*/  STM32_LPTIM_PRESC ; 
 int /*<<< orphan*/  STM32_LPTIM_WAVPOL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct stm32_pwm_lp* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC6(struct pwm_chip *chip,
				   struct pwm_device *pwm,
				   struct pwm_state *state)
{
	struct stm32_pwm_lp *priv = FUNC5(chip);
	unsigned long rate = FUNC3(priv->clk);
	u32 val, presc, prd;
	u64 tmp;

	FUNC4(priv->regmap, STM32_LPTIM_CR, &val);
	state->enabled = !!FUNC1(STM32_LPTIM_ENABLE, val);
	/* Keep PWM counter clock refcount in sync with PWM initial state */
	if (state->enabled)
		FUNC2(priv->clk);

	FUNC4(priv->regmap, STM32_LPTIM_CFGR, &val);
	presc = FUNC1(STM32_LPTIM_PRESC, val);
	state->polarity = FUNC1(STM32_LPTIM_WAVPOL, val);

	FUNC4(priv->regmap, STM32_LPTIM_ARR, &prd);
	tmp = prd + 1;
	tmp = (tmp << presc) * NSEC_PER_SEC;
	state->period = FUNC0(tmp, rate);

	FUNC4(priv->regmap, STM32_LPTIM_CMP, &val);
	tmp = prd - val;
	tmp = (tmp << presc) * NSEC_PER_SEC;
	state->duty_cycle = FUNC0(tmp, rate);
}