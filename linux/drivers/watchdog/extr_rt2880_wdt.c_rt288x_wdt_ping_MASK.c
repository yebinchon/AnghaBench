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
struct watchdog_device {int timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_REG_TMR1LOAD ; 
 int rt288x_wdt_freq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct watchdog_device *w)
{
	FUNC0(TIMER_REG_TMR1LOAD, w->timeout * rt288x_wdt_freq);

	return 0;
}