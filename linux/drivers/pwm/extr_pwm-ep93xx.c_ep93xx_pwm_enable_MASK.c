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
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct ep93xx_pwm {scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ EP93XX_PWMx_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ep93xx_pwm* FUNC1 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct ep93xx_pwm *ep93xx_pwm = FUNC1(chip);
	int ret;

	ret = FUNC0(ep93xx_pwm->clk);
	if (ret)
		return ret;

	FUNC2(0x1, ep93xx_pwm->base + EP93XX_PWMx_ENABLE);

	return 0;
}