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
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWM_POLARITY_NORMAL ; 
 int FUNC0 (struct pwm_chip*,int /*<<< orphan*/ ) ; 

int FUNC1(struct pwm_chip *chip)
{
	return FUNC0(chip, PWM_POLARITY_NORMAL);
}