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
struct TYPE_2__ {unsigned int npwm; struct pwm_device* pwms; } ;
struct tegra_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; } ;
struct pwm_device {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct tegra_pwm_chip* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_pwm_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct tegra_pwm_chip *pc = FUNC3(pdev);
	unsigned int i;
	int err;

	if (FUNC0(!pc))
		return -ENODEV;

	err = FUNC2(pc->clk);
	if (err < 0)
		return err;

	for (i = 0; i < pc->chip.npwm; i++) {
		struct pwm_device *pwm = &pc->chip.pwms[i];

		if (!FUNC4(pwm))
			if (FUNC2(pc->clk) < 0)
				continue;

		FUNC5(pc, i, 0);

		FUNC1(pc->clk);
	}

	FUNC7(pc->rst);
	FUNC1(pc->clk);

	return FUNC6(&pc->chip);
}