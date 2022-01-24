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
struct img_pwm_chip {int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  pwm_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct img_pwm_chip* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct img_pwm_chip *pwm_chip = FUNC3(dev);
	int ret;

	ret = FUNC1(pwm_chip->sys_clk);
	if (ret < 0) {
		FUNC2(dev, "could not prepare or enable sys clock\n");
		return ret;
	}

	ret = FUNC1(pwm_chip->pwm_clk);
	if (ret < 0) {
		FUNC2(dev, "could not prepare or enable pwm clock\n");
		FUNC0(pwm_chip->sys_clk);
		return ret;
	}

	return 0;
}