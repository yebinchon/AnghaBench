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
typedef  int u32 ;
struct platform_device {int dummy; } ;
struct lpc18xx_pwm_chip {int /*<<< orphan*/  chip; int /*<<< orphan*/  pwm_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC18XX_PWM_CTRL ; 
 int LPC18XX_PWM_CTRL_HALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lpc18xx_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpc18xx_pwm_chip*,int /*<<< orphan*/ ,int) ; 
 struct lpc18xx_pwm_chip* FUNC3 (struct platform_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct lpc18xx_pwm_chip *lpc18xx_pwm = FUNC3(pdev);
	u32 val;

	val = FUNC1(lpc18xx_pwm, LPC18XX_PWM_CTRL);
	FUNC2(lpc18xx_pwm, LPC18XX_PWM_CTRL,
			   val | LPC18XX_PWM_CTRL_HALT);

	FUNC0(lpc18xx_pwm->pwm_clk);

	return FUNC4(&lpc18xx_pwm->chip);
}