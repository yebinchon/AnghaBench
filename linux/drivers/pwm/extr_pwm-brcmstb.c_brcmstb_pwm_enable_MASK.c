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
struct brcmstb_pwm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmstb_pwm*,int /*<<< orphan*/ ,int) ; 
 struct brcmstb_pwm* FUNC1 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC2(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct brcmstb_pwm *p = FUNC1(chip);

	FUNC0(p, pwm->hwpwm, true);

	return 0;
}