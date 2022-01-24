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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_pwm_chip {int /*<<< orphan*/  clk; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_pwm_chip* FUNC3 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC4(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct tegra_pwm_chip *pc = FUNC3(chip);
	u32 val;

	val = FUNC1(pc, pwm->hwpwm);
	val &= ~PWM_ENABLE;
	FUNC2(pc, pwm->hwpwm, val);

	FUNC0(pc->clk);
}