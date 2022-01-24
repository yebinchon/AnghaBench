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
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  W83627HF_LD_WDT ; 
 int /*<<< orphan*/  cr_wdt_timeout ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(struct watchdog_device *wdog)
{
	unsigned int timeleft;
	int ret;

	ret = FUNC0();
	if (ret)
		return 0;

	FUNC3(W83627HF_LD_WDT);
	timeleft = FUNC2(cr_wdt_timeout);
	FUNC1();

	return timeleft;
}