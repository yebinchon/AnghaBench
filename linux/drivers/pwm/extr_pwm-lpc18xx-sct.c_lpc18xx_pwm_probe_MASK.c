#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct resource {int dummy; } ;
struct pwm_device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct lpc18xx_pwm_data {int dummy; } ;
struct TYPE_3__ {int base; int npwm; int of_pwm_n_cells; struct pwm_device* pwms; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct lpc18xx_pwm_chip {int max_period_ns; int /*<<< orphan*/  pwm_clk; TYPE_1__ chip; int /*<<< orphan*/ * dev; int /*<<< orphan*/  period_event; int /*<<< orphan*/  event_map; int /*<<< orphan*/  clk_rate; int /*<<< orphan*/  min_period_ns; int /*<<< orphan*/  period_lock; int /*<<< orphan*/  res_lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int LPC18XX_PWM_BIDIR ; 
 int /*<<< orphan*/  LPC18XX_PWM_CONFIG ; 
 int LPC18XX_PWM_CONFIG_UNIFY ; 
 int /*<<< orphan*/  LPC18XX_PWM_CTRL ; 
 int LPC18XX_PWM_CTRL_HALT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int LPC18XX_PWM_EVCTRL_COMB_MATCH ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC18XX_PWM_EVENT_PERIOD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int LPC18XX_PWM_EVSTATEMSK_ALL ; 
 int /*<<< orphan*/  LPC18XX_PWM_LIMIT ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int LPC18XX_PWM_PRE_MASK ; 
 int LPC18XX_PWM_TIMER_MAX ; 
 scalar_t__ NSEC_PER_SEC ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct resource*) ; 
 void* FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpc18xx_pwm_ops ; 
 int FUNC16 (struct lpc18xx_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct lpc18xx_pwm_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct lpc18xx_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC21 (struct pwm_device*,struct lpc18xx_pwm_data*) ; 
 int FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct lpc18xx_pwm_chip *lpc18xx_pwm;
	struct pwm_device *pwm;
	struct resource *res;
	int ret, i;
	u64 val;

	lpc18xx_pwm = FUNC14(&pdev->dev, sizeof(*lpc18xx_pwm),
				   GFP_KERNEL);
	if (!lpc18xx_pwm)
		return -ENOMEM;

	lpc18xx_pwm->dev = &pdev->dev;

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	lpc18xx_pwm->base = FUNC13(&pdev->dev, res);
	if (FUNC2(lpc18xx_pwm->base))
		return FUNC7(lpc18xx_pwm->base);

	lpc18xx_pwm->pwm_clk = FUNC12(&pdev->dev, "pwm");
	if (FUNC2(lpc18xx_pwm->pwm_clk)) {
		FUNC11(&pdev->dev, "failed to get pwm clock\n");
		return FUNC7(lpc18xx_pwm->pwm_clk);
	}

	ret = FUNC10(lpc18xx_pwm->pwm_clk);
	if (ret < 0) {
		FUNC11(&pdev->dev, "could not prepare or enable pwm clock\n");
		return ret;
	}

	lpc18xx_pwm->clk_rate = FUNC9(lpc18xx_pwm->pwm_clk);
	if (!lpc18xx_pwm->clk_rate) {
		FUNC11(&pdev->dev, "pwm clock has no frequency\n");
		ret = -EINVAL;
		goto disable_pwmclk;
	}

	FUNC18(&lpc18xx_pwm->res_lock);
	FUNC18(&lpc18xx_pwm->period_lock);

	val = (u64)NSEC_PER_SEC * LPC18XX_PWM_TIMER_MAX;
	FUNC15(val, lpc18xx_pwm->clk_rate);
	lpc18xx_pwm->max_period_ns = val;

	lpc18xx_pwm->min_period_ns = FUNC1(NSEC_PER_SEC,
						  lpc18xx_pwm->clk_rate);

	lpc18xx_pwm->chip.dev = &pdev->dev;
	lpc18xx_pwm->chip.ops = &lpc18xx_pwm_ops;
	lpc18xx_pwm->chip.base = -1;
	lpc18xx_pwm->chip.npwm = 16;
	lpc18xx_pwm->chip.of_xlate = of_pwm_xlate_with_flags;
	lpc18xx_pwm->chip.of_pwm_n_cells = 3;

	/* SCT counter must be in unify (32 bit) mode */
	FUNC17(lpc18xx_pwm, LPC18XX_PWM_CONFIG,
			   LPC18XX_PWM_CONFIG_UNIFY);

	/*
	 * Everytime the timer counter reaches the period value, the related
	 * event will be triggered and the counter reset to 0.
	 */
	FUNC24(LPC18XX_PWM_EVENT_PERIOD, &lpc18xx_pwm->event_map);
	lpc18xx_pwm->period_event = LPC18XX_PWM_EVENT_PERIOD;

	FUNC17(lpc18xx_pwm,
			   FUNC5(lpc18xx_pwm->period_event),
			   LPC18XX_PWM_EVSTATEMSK_ALL);

	val = FUNC4(lpc18xx_pwm->period_event) |
	      LPC18XX_PWM_EVCTRL_COMB_MATCH;
	FUNC17(lpc18xx_pwm,
			   FUNC3(lpc18xx_pwm->period_event), val);

	FUNC17(lpc18xx_pwm, LPC18XX_PWM_LIMIT,
			   FUNC0(lpc18xx_pwm->period_event));

	ret = FUNC22(&lpc18xx_pwm->chip);
	if (ret < 0) {
		FUNC11(&pdev->dev, "pwmchip_add failed: %d\n", ret);
		goto disable_pwmclk;
	}

	for (i = 0; i < lpc18xx_pwm->chip.npwm; i++) {
		struct lpc18xx_pwm_data *data;

		pwm = &lpc18xx_pwm->chip.pwms[i];

		data = FUNC14(lpc18xx_pwm->dev, sizeof(*data),
				    GFP_KERNEL);
		if (!data) {
			ret = -ENOMEM;
			goto remove_pwmchip;
		}

		FUNC21(pwm, data);
	}

	FUNC20(pdev, lpc18xx_pwm);

	val = FUNC16(lpc18xx_pwm, LPC18XX_PWM_CTRL);
	val &= ~LPC18XX_PWM_BIDIR;
	val &= ~LPC18XX_PWM_CTRL_HALT;
	val &= ~LPC18XX_PWM_PRE_MASK;
	val |= FUNC6(0);
	FUNC17(lpc18xx_pwm, LPC18XX_PWM_CTRL, val);

	return 0;

remove_pwmchip:
	FUNC23(&lpc18xx_pwm->chip);
disable_pwmclk:
	FUNC8(lpc18xx_pwm->pwm_clk);
	return ret;
}