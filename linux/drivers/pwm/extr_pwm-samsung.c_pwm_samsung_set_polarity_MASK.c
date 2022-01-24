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
struct samsung_pwm_chip {int dummy; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
typedef  enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;

/* Variables and functions */
 int PWM_POLARITY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct samsung_pwm_chip*,int /*<<< orphan*/ ,int) ; 
 struct samsung_pwm_chip* FUNC1 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC2(struct pwm_chip *chip,
				    struct pwm_device *pwm,
				    enum pwm_polarity polarity)
{
	struct samsung_pwm_chip *our_chip = FUNC1(chip);
	bool invert = (polarity == PWM_POLARITY_NORMAL);

	/* Inverted means normal in the hardware. */
	FUNC0(our_chip, pwm->hwpwm, invert);

	return 0;
}