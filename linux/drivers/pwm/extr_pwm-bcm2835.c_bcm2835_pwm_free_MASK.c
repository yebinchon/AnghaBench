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
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct bcm2835_pwm {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ PWM_CONTROL ; 
 int PWM_CONTROL_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 struct bcm2835_pwm* FUNC2 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct bcm2835_pwm *pc = FUNC2(chip);
	u32 value;

	value = FUNC1(pc->base + PWM_CONTROL);
	value &= ~(PWM_CONTROL_MASK << FUNC0(pwm->hwpwm));
	FUNC3(value, pc->base + PWM_CONTROL);
}