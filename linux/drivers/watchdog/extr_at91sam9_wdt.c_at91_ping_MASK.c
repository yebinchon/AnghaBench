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
struct timer_list {int dummy; } ;
struct at91wdt {scalar_t__ heartbeat; int /*<<< orphan*/  timer; int /*<<< orphan*/  wdd; int /*<<< orphan*/  next_heartbeat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at91wdt*) ; 
 struct at91wdt* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct at91wdt* wdt ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct at91wdt *wdt = FUNC1(wdt, t, timer);
	if (FUNC4(jiffies, wdt->next_heartbeat) ||
	    !FUNC5(&wdt->wdd)) {
		FUNC0(wdt);
		FUNC2(&wdt->timer, jiffies + wdt->heartbeat);
	} else {
		FUNC3("I will reset your machine !\n");
	}
}