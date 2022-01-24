#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mod_period; } ;
struct fsl_pwm_chip {TYPE_1__ period; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long,unsigned int) ; 
 unsigned int FUNC1 (struct fsl_pwm_chip*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(struct fsl_pwm_chip *fpc,
					   unsigned int duty_ns)
{
	unsigned long long duty;

	unsigned int period = fpc->period.mod_period + 1;
	unsigned int period_ns = FUNC1(fpc, period);

	duty = (unsigned long long)duty_ns * period;
	FUNC0(duty, period_ns);

	return (unsigned int)duty;
}