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
struct pwm_device {int dummy; } ;
struct lp855x {struct pwm_device* pwm; int /*<<< orphan*/  chipname; int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {unsigned int period_ns; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pwm_device*) ; 
 struct pwm_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_device*) ; 

__attribute__((used)) static void FUNC6(struct lp855x *lp, int br, int max_br)
{
	unsigned int period = lp->pdata->period_ns;
	unsigned int duty = br * period / max_br;
	struct pwm_device *pwm;

	/* request pwm device with the consumer name */
	if (!lp->pwm) {
		pwm = FUNC1(lp->dev, lp->chipname);
		if (FUNC0(pwm))
			return;

		lp->pwm = pwm;

		/*
		 * FIXME: pwm_apply_args() should be removed when switching to
		 * the atomic PWM API.
		 */
		FUNC2(pwm);
	}

	FUNC3(lp->pwm, duty, period);
	if (duty)
		FUNC5(lp->pwm);
	else
		FUNC4(lp->pwm);
}