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
typedef  unsigned int u32 ;
struct stm32_pwm {unsigned long long max_arr; int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned int CCMR_CHANNEL_MASK ; 
 int CCMR_CHANNEL_SHIFT ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned int MAX_TIM_PSC ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  TIM_ARR ; 
 int /*<<< orphan*/  TIM_BDTR ; 
 unsigned int TIM_BDTR_AOE ; 
 unsigned int TIM_BDTR_MOE ; 
 int /*<<< orphan*/  TIM_CCMR1 ; 
 int /*<<< orphan*/  TIM_CCMR2 ; 
 unsigned int TIM_CCMR_M1 ; 
 unsigned int TIM_CCMR_PE ; 
 int /*<<< orphan*/  TIM_CR1 ; 
 unsigned int TIM_CR1_ARPE ; 
 int /*<<< orphan*/  TIM_PSC ; 
 int FUNC0 (struct stm32_pwm*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_pwm*,int,unsigned long long) ; 

__attribute__((used)) static int FUNC7(struct stm32_pwm *priv, int ch,
			    int duty_ns, int period_ns)
{
	unsigned long long prd, div, dty;
	unsigned int prescaler = 0;
	u32 ccmr, mask, shift;

	/* Period and prescaler values depends on clock rate */
	div = (unsigned long long)FUNC1(priv->clk) * period_ns;

	FUNC2(div, NSEC_PER_SEC);
	prd = div;

	while (div > priv->max_arr) {
		prescaler++;
		div = prd;
		FUNC2(div, prescaler + 1);
	}

	prd = div;

	if (prescaler > MAX_TIM_PSC)
		return -EINVAL;

	/*
	 * All channels share the same prescaler and counter so when two
	 * channels are active at the same time we can't change them
	 */
	if (FUNC0(priv) & ~(1 << ch * 4)) {
		u32 psc, arr;

		FUNC3(priv->regmap, TIM_PSC, &psc);
		FUNC3(priv->regmap, TIM_ARR, &arr);

		if ((psc != prescaler) || (arr != prd - 1))
			return -EBUSY;
	}

	FUNC5(priv->regmap, TIM_PSC, prescaler);
	FUNC5(priv->regmap, TIM_ARR, prd - 1);
	FUNC4(priv->regmap, TIM_CR1, TIM_CR1_ARPE, TIM_CR1_ARPE);

	/* Calculate the duty cycles */
	dty = prd * duty_ns;
	FUNC2(dty, period_ns);

	FUNC6(priv, ch, dty);

	/* Configure output mode */
	shift = (ch & 0x1) * CCMR_CHANNEL_SHIFT;
	ccmr = (TIM_CCMR_PE | TIM_CCMR_M1) << shift;
	mask = CCMR_CHANNEL_MASK << shift;

	if (ch < 2)
		FUNC4(priv->regmap, TIM_CCMR1, mask, ccmr);
	else
		FUNC4(priv->regmap, TIM_CCMR2, mask, ccmr);

	FUNC4(priv->regmap, TIM_BDTR,
			   TIM_BDTR_MOE | TIM_BDTR_AOE,
			   TIM_BDTR_MOE | TIM_BDTR_AOE);

	return 0;
}