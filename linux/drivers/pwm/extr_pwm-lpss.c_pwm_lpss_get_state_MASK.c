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
struct pwm_state {unsigned long period; unsigned long long duty_cycle; int enabled; int /*<<< orphan*/  polarity; } ;
struct pwm_lpss_chip {TYPE_1__* info; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned long long clk_rate; int /*<<< orphan*/  base_unit_bits; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long NSEC_PER_SEC ; 
 int PWM_BASE_UNIT_SHIFT ; 
 int PWM_ENABLE ; 
 int PWM_ON_TIME_DIV_MASK ; 
 int /*<<< orphan*/  PWM_POLARITY_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pwm_device*) ; 
 struct pwm_lpss_chip* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC5(struct pwm_chip *chip, struct pwm_device *pwm,
			       struct pwm_state *state)
{
	struct pwm_lpss_chip *lpwm = FUNC4(chip);
	unsigned long base_unit_range;
	unsigned long long base_unit, freq, on_time_div;
	u32 ctrl;

	base_unit_range = FUNC0(lpwm->info->base_unit_bits);

	ctrl = FUNC3(pwm);
	on_time_div = 255 - (ctrl & PWM_ON_TIME_DIV_MASK);
	base_unit = (ctrl >> PWM_BASE_UNIT_SHIFT) & (base_unit_range - 1);

	freq = base_unit * lpwm->info->clk_rate;
	FUNC1(freq, base_unit_range);
	if (freq == 0)
		state->period = NSEC_PER_SEC;
	else
		state->period = NSEC_PER_SEC / (unsigned long)freq;

	on_time_div *= state->period;
	FUNC1(on_time_div, 255);
	state->duty_cycle = on_time_div;

	state->polarity = PWM_POLARITY_NORMAL;
	state->enabled = !!(ctrl & PWM_ENABLE);

	if (state->enabled)
		FUNC2(chip->dev);
}