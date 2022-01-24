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
struct lp3943_pwm_map {int dummy; } ;
struct lp3943_pwm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lp3943_pwm_map*) ; 
 int FUNC1 (struct lp3943_pwm_map*) ; 
 struct lp3943_pwm_map* FUNC2 (struct lp3943_pwm*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pwm_device*,struct lp3943_pwm_map*) ; 
 struct lp3943_pwm* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct lp3943_pwm *lp3943_pwm = FUNC4(chip);
	struct lp3943_pwm_map *pwm_map;

	pwm_map = FUNC2(lp3943_pwm, pwm->hwpwm);
	if (FUNC0(pwm_map))
		return FUNC1(pwm_map);

	return FUNC3(pwm, pwm_map);
}