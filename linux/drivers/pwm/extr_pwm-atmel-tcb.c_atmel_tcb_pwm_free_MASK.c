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
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct atmel_tcb_pwm_device {int dummy; } ;
struct atmel_tcb_pwm_chip {int /*<<< orphan*/ ** pwms; struct atmel_tc* tc; } ;
struct atmel_tc {int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct atmel_tcb_pwm_device*) ; 
 struct atmel_tcb_pwm_device* FUNC2 (struct pwm_device*) ; 
 struct atmel_tcb_pwm_chip* FUNC3 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC4(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct atmel_tcb_pwm_chip *tcbpwmc = FUNC3(chip);
	struct atmel_tcb_pwm_device *tcbpwm = FUNC2(pwm);
	struct atmel_tc *tc = tcbpwmc->tc;

	FUNC0(tc->clk[pwm->hwpwm / 2]);
	tcbpwmc->pwms[pwm->hwpwm] = NULL;
	FUNC1(chip->dev, tcbpwm);
}