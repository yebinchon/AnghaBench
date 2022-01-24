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
struct dw_wdt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_wdt*) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 struct dw_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct dw_wdt *dw_wdt = FUNC2(wdd);

	FUNC1(wdd, wdd->timeout);
	FUNC0(dw_wdt);

	return 0;
}