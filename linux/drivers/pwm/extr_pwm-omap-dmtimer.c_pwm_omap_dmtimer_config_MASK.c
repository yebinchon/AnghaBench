#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct pwm_omap_dmtimer_chip {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dm_timer; TYPE_2__* pdata; TYPE_1__* dm_timer_pdev; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_pwm ) (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_match ) (int /*<<< orphan*/ ,int,int) ;int /*<<< orphan*/  (* set_load ) (int /*<<< orphan*/ ,int,int) ;int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ ) ;struct clk* (* get_fclk ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 int DM_TIMER_MAX ; 
 int EINVAL ; 
 scalar_t__ NSEC_PER_SEC ; 
 int /*<<< orphan*/  PWM_OMAP_DMTIMER_TRIGGER_OVERFLOW_AND_COMPARE ; 
 scalar_t__ PWM_POLARITY_INVERSED ; 
 unsigned long FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct pwm_device*) ; 
 int FUNC9 (struct pwm_device*) ; 
 scalar_t__ FUNC10 (struct pwm_device*) ; 
 int FUNC11 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pwm_omap_dmtimer_chip*) ; 
 struct clk* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct pwm_omap_dmtimer_chip* FUNC18 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC19(struct pwm_chip *chip,
				   struct pwm_device *pwm,
				   int duty_ns, int period_ns)
{
	struct pwm_omap_dmtimer_chip *omap = FUNC18(chip);
	u32 period_cycles, duty_cycles;
	u32 load_value, match_value;
	struct clk *fclk;
	unsigned long clk_rate;
	bool timer_active;

	FUNC2(chip->dev, "requested duty cycle: %d ns, period: %d ns\n",
		duty_ns, period_ns);

	FUNC5(&omap->mutex);
	if (duty_ns == FUNC8(pwm) &&
	    period_ns == FUNC9(pwm)) {
		/* No change - don't cause any transients. */
		FUNC6(&omap->mutex);
		return 0;
	}

	fclk = omap->pdata->get_fclk(omap->dm_timer);
	if (!fclk) {
		FUNC3(chip->dev, "invalid pmtimer fclk\n");
		goto err_einval;
	}

	clk_rate = FUNC1(fclk);
	if (!clk_rate) {
		FUNC3(chip->dev, "invalid pmtimer fclk rate\n");
		goto err_einval;
	}

	FUNC2(chip->dev, "clk rate: %luHz\n", clk_rate);

	/*
	 * Calculate the appropriate load and match values based on the
	 * specified period and duty cycle. The load value determines the
	 * period time and the match value determines the duty time.
	 *
	 * The period lasts for (DM_TIMER_MAX-load_value+1) clock cycles.
	 * Similarly, the active time lasts (match_value-load_value+1) cycles.
	 * The non-active time is the remainder: (DM_TIMER_MAX-match_value)
	 * clock cycles.
	 *
	 * NOTE: It is required that: load_value <= match_value < DM_TIMER_MAX
	 *
	 * References:
	 *   OMAP4430/60/70 TRM sections 22.2.4.10 and 22.2.4.11
	 *   AM335x Sitara TRM sections 20.1.3.5 and 20.1.3.6
	 */
	period_cycles = FUNC11(clk_rate, period_ns);
	duty_cycles = FUNC11(clk_rate, duty_ns);

	if (period_cycles < 2) {
		FUNC4(chip->dev,
			 "period %d ns too short for clock rate %lu Hz\n",
			 period_ns, clk_rate);
		goto err_einval;
	}

	if (duty_cycles < 1) {
		FUNC2(chip->dev,
			"duty cycle %d ns is too short for clock rate %lu Hz\n",
			duty_ns, clk_rate);
		FUNC2(chip->dev, "using minimum of 1 clock cycle\n");
		duty_cycles = 1;
	} else if (duty_cycles >= period_cycles) {
		FUNC2(chip->dev,
			"duty cycle %d ns is too long for period %d ns at clock rate %lu Hz\n",
			duty_ns, period_ns, clk_rate);
		FUNC2(chip->dev, "using maximum of 1 clock cycle less than period\n");
		duty_cycles = period_cycles - 1;
	}

	FUNC2(chip->dev, "effective duty cycle: %lld ns, period: %lld ns\n",
		FUNC0((u64)NSEC_PER_SEC * duty_cycles,
				      clk_rate),
		FUNC0((u64)NSEC_PER_SEC * period_cycles,
				      clk_rate));

	load_value = (DM_TIMER_MAX - period_cycles) + 1;
	match_value = load_value + duty_cycles - 1;

	/*
	 * We MUST stop the associated dual-mode timer before attempting to
	 * write its registers, but calls to omap_dm_timer_start/stop must
	 * be balanced so check if timer is active before calling timer_stop.
	 */
	timer_active = FUNC7(&omap->dm_timer_pdev->dev);
	if (timer_active)
		omap->pdata->stop(omap->dm_timer);

	omap->pdata->set_load(omap->dm_timer, true, load_value);
	omap->pdata->set_match(omap->dm_timer, true, match_value);

	FUNC2(chip->dev, "load value: %#08x (%d), match value: %#08x (%d)\n",
		load_value, load_value,	match_value, match_value);

	omap->pdata->set_pwm(omap->dm_timer,
			      FUNC10(pwm) == PWM_POLARITY_INVERSED,
			      true,
			      PWM_OMAP_DMTIMER_TRIGGER_OVERFLOW_AND_COMPARE);

	/* If config was called while timer was running it must be reenabled. */
	if (timer_active)
		FUNC12(omap);

	FUNC6(&omap->mutex);

	return 0;

err_einval:
	FUNC6(&omap->mutex);

	return -EINVAL;
}