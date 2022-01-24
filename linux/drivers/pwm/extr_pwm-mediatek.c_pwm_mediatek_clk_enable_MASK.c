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
struct pwm_mediatek_chip {int /*<<< orphan*/  clk_top; int /*<<< orphan*/  clk_main; int /*<<< orphan*/ * clk_pwms; } ;
struct pwm_device {size_t hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct pwm_mediatek_chip* FUNC2 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC3(struct pwm_chip *chip,
				   struct pwm_device *pwm)
{
	struct pwm_mediatek_chip *pc = FUNC2(chip);
	int ret;

	ret = FUNC1(pc->clk_top);
	if (ret < 0)
		return ret;

	ret = FUNC1(pc->clk_main);
	if (ret < 0)
		goto disable_clk_top;

	ret = FUNC1(pc->clk_pwms[pwm->hwpwm]);
	if (ret < 0)
		goto disable_clk_main;

	return 0;

disable_clk_main:
	FUNC0(pc->clk_main);
disable_clk_top:
	FUNC0(pc->clk_top);

	return ret;
}