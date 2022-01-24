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
struct zx2967_wdt {int dummy; } ;
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 struct zx2967_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct zx2967_wdt*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct zx2967_wdt *wdt = FUNC0(wdd);

	FUNC1(wdt);

	return 0;
}