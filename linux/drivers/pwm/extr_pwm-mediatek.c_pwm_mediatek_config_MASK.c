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
struct pwm_mediatek_chip {TYPE_1__* soc; int /*<<< orphan*/ * clk_pwms; } ;
struct pwm_device {size_t hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ pwm45_fixup; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int EINVAL ; 
 scalar_t__ NSEC_PER_SEC ; 
 int PWM45DWIDTH_FIXUP ; 
 int PWM45THRES_FIXUP ; 
 int PWMCON ; 
 int PWMDWIDTH ; 
 int PWMTHRES ; 
 int PWM_CLK_DIV_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_chip*,struct pwm_device*) ; 
 int FUNC6 (struct pwm_chip*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pwm_mediatek_chip*,int,int,int) ; 
 struct pwm_mediatek_chip* FUNC8 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC9(struct pwm_chip *chip, struct pwm_device *pwm,
			       int duty_ns, int period_ns)
{
	struct pwm_mediatek_chip *pc = FUNC8(chip);
	u32 clkdiv = 0, cnt_period, cnt_duty, reg_width = PWMDWIDTH,
	    reg_thres = PWMTHRES;
	u64 resolution;
	int ret;

	ret = FUNC6(chip, pwm);

	if (ret < 0)
		return ret;

	/* Using resolution in picosecond gets accuracy higher */
	resolution = (u64)NSEC_PER_SEC * 1000;
	FUNC4(resolution, FUNC2(pc->clk_pwms[pwm->hwpwm]));

	cnt_period = FUNC1((u64)period_ns * 1000, resolution);
	while (cnt_period > 8191) {
		resolution *= 2;
		clkdiv++;
		cnt_period = FUNC1((u64)period_ns * 1000,
						   resolution);
	}

	if (clkdiv > PWM_CLK_DIV_MAX) {
		FUNC5(chip, pwm);
		FUNC3(chip->dev, "period %d not supported\n", period_ns);
		return -EINVAL;
	}

	if (pc->soc->pwm45_fixup && pwm->hwpwm > 2) {
		/*
		 * PWM[4,5] has distinct offset for PWMDWIDTH and PWMTHRES
		 * from the other PWMs on MT7623.
		 */
		reg_width = PWM45DWIDTH_FIXUP;
		reg_thres = PWM45THRES_FIXUP;
	}

	cnt_duty = FUNC1((u64)duty_ns * 1000, resolution);
	FUNC7(pc, pwm->hwpwm, PWMCON, FUNC0(15) | clkdiv);
	FUNC7(pc, pwm->hwpwm, reg_width, cnt_period);
	FUNC7(pc, pwm->hwpwm, reg_thres, cnt_duty);

	FUNC5(chip, pwm);

	return 0;
}