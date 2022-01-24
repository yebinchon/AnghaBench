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
struct lm3630a_chip {int /*<<< orphan*/  pwmd; TYPE_1__* pdata; } ;
struct TYPE_2__ {unsigned int pwm_period; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct lm3630a_chip *pchip, int br, int br_max)
{
	unsigned int period = pchip->pdata->pwm_period;
	unsigned int duty = br * period / br_max;

	FUNC0(pchip->pwmd, duty, period);
	if (duty)
		FUNC2(pchip->pwmd);
	else
		FUNC1(pchip->pwmd);
}