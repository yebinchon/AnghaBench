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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct bcm_kona_wdt {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,struct bcm_kona_wdt*) ; 
 int /*<<< orphan*/  SECWDOG_COUNT_MASK ; 
 int FUNC1 (struct bcm_kona_wdt*,int /*<<< orphan*/ ,unsigned int) ; 
 struct bcm_kona_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdog,
					unsigned watchdog_flags)
{
	struct bcm_kona_wdt *wdt = FUNC2(wdog);

	return FUNC1(wdt, SECWDOG_COUNT_MASK,
					FUNC0(wdog->timeout, wdt) |
					watchdog_flags);
}