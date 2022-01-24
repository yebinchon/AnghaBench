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
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct lpc32xx_pwm_chip {int /*<<< orphan*/  clk; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct lpc32xx_pwm_chip* FUNC2 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct lpc32xx_pwm_chip *lpc32xx = FUNC2(chip);
	u32 val;

	val = FUNC1(lpc32xx->base + (pwm->hwpwm << 2));
	val &= ~PWM_ENABLE;
	FUNC3(val, lpc32xx->base + (pwm->hwpwm << 2));

	FUNC0(lpc32xx->clk);
}