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
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct clps711x_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct pwm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clps711x_chip*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_device*) ; 
 struct clps711x_chip* FUNC3 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC4(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct clps711x_chip *priv = FUNC3(chip);
	unsigned int duty;

	duty = FUNC0(pwm, FUNC2(pwm));
	FUNC1(priv, pwm->hwpwm, duty);

	return 0;
}