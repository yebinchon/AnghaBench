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
struct pwm_device {int dummy; } ;
struct lp8788_bl {struct pwm_device* pwm; TYPE_1__* lp; TYPE_2__* pdata; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int period_ns; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pwm_device*) ; 
 int /*<<< orphan*/  LP8788_DEV_BACKLIGHT ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct pwm_device* FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pwm_device*) ; 

__attribute__((used)) static void FUNC7(struct lp8788_bl *bl, int br, int max_br)
{
	unsigned int period;
	unsigned int duty;
	struct device *dev;
	struct pwm_device *pwm;

	if (!bl->pdata)
		return;

	period = bl->pdata->period_ns;
	duty = br * period / max_br;
	dev = bl->lp->dev;

	/* request PWM device with the consumer name */
	if (!bl->pwm) {
		pwm = FUNC2(dev, LP8788_DEV_BACKLIGHT);
		if (FUNC0(pwm)) {
			FUNC1(dev, "can not get PWM device\n");
			return;
		}

		bl->pwm = pwm;

		/*
		 * FIXME: pwm_apply_args() should be removed when switching to
		 * the atomic PWM API.
		 */
		FUNC3(pwm);
	}

	FUNC4(bl->pwm, duty, period);
	if (duty)
		FUNC6(bl->pwm);
	else
		FUNC5(bl->pwm);
}