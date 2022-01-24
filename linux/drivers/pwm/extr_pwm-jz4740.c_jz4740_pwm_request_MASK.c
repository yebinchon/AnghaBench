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
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct pwm_chip *chip, struct pwm_device *pwm)
{
	/*
	 * Timers 0 and 1 are used for system tasks, so they are unavailable
	 * for use as PWMs.
	 */
	if (pwm->hwpwm < 2)
		return -EBUSY;

	FUNC0(pwm->hwpwm);

	return 0;
}