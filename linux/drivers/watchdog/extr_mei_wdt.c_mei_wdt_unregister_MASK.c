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
struct mei_wdt {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  wdd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mei_wdt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mei_wdt *wdt)
{
	FUNC2(&wdt->reg_lock);

	if (FUNC0(wdt)) {
		FUNC5(&wdt->wdd);
		FUNC4(&wdt->wdd, NULL);
		FUNC1(&wdt->wdd, 0, sizeof(wdt->wdd));
	}

	FUNC3(&wdt->reg_lock);
}