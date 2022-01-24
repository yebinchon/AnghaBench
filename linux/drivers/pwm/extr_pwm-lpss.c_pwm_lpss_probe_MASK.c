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
struct resource {int dummy; } ;
struct TYPE_2__ {int base; scalar_t__ npwm; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct pwm_lpss_chip {TYPE_1__ chip; struct pwm_lpss_boardinfo const* info; int /*<<< orphan*/  regs; } ;
struct pwm_lpss_boardinfo {scalar_t__ npwm; unsigned long clk_rate; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct pwm_lpss_chip* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pwm_lpss_chip* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_PWMS ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct pwm_lpss_chip* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwm_lpss_ops ; 
 int FUNC7 (TYPE_1__*) ; 

struct pwm_lpss_chip *FUNC8(struct device *dev, struct resource *r,
				     const struct pwm_lpss_boardinfo *info)
{
	struct pwm_lpss_chip *lpwm;
	unsigned long c;
	int ret;

	if (FUNC3(info->npwm > MAX_PWMS))
		return FUNC1(-ENODEV);

	lpwm = FUNC6(dev, sizeof(*lpwm), GFP_KERNEL);
	if (!lpwm)
		return FUNC1(-ENOMEM);

	lpwm->regs = FUNC5(dev, r);
	if (FUNC2(lpwm->regs))
		return FUNC0(lpwm->regs);

	lpwm->info = info;

	c = lpwm->info->clk_rate;
	if (!c)
		return FUNC1(-EINVAL);

	lpwm->chip.dev = dev;
	lpwm->chip.ops = &pwm_lpss_ops;
	lpwm->chip.base = -1;
	lpwm->chip.npwm = info->npwm;

	ret = FUNC7(&lpwm->chip);
	if (ret) {
		FUNC4(dev, "failed to add PWM chip: %d\n", ret);
		return FUNC1(ret);
	}

	return lpwm;
}