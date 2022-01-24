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
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_REG_TMR1CTL ; 
 int TMR1CTL_ENABLE ; 
 int TMR1CTL_MODE_MASK ; 
 int TMR1CTL_MODE_SHIFT ; 
 int TMR1CTL_MODE_WDT ; 
 int TMR1CTL_PRESCALE_65536 ; 
 int TMR1CTL_PRESCALE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct watchdog_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *w)
{
	u32 t;

	t = FUNC1(TIMER_REG_TMR1CTL);
	t &= ~(TMR1CTL_MODE_MASK << TMR1CTL_MODE_SHIFT |
		TMR1CTL_PRESCALE_MASK);
	t |= (TMR1CTL_MODE_WDT << TMR1CTL_MODE_SHIFT |
		TMR1CTL_PRESCALE_65536);
	FUNC2(TIMER_REG_TMR1CTL, t);

	FUNC0(w);

	t = FUNC1(TIMER_REG_TMR1CTL);
	t |= TMR1CTL_ENABLE;
	FUNC2(TIMER_REG_TMR1CTL, t);

	return 0;
}