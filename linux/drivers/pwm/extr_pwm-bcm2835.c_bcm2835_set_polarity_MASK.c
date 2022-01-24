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
typedef  enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;

/* Variables and functions */
 scalar_t__ PWM_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PWM_POLARITY ; 
 int PWM_POLARITY_NORMAL ; 
 int FUNC1 (scalar_t__) ; 
 struct bcm2835_pwm* FUNC2 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct pwm_chip *chip, struct pwm_device *pwm,
				enum pwm_polarity polarity)
{
	struct bcm2835_pwm *pc = FUNC2(chip);
	u32 value;

	value = FUNC1(pc->base + PWM_CONTROL);

	if (polarity == PWM_POLARITY_NORMAL)
		value &= ~(PWM_POLARITY << FUNC0(pwm->hwpwm));
	else
		value |= PWM_POLARITY << FUNC0(pwm->hwpwm);

	FUNC3(value, pc->base + PWM_CONTROL);

	return 0;
}