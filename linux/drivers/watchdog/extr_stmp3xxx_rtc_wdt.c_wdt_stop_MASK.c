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
struct stmp3xxx_wdt_pdata {int /*<<< orphan*/  (* wdt_set_timeout ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct stmp3xxx_wdt_pdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct device *dev = FUNC2(wdd);
	struct stmp3xxx_wdt_pdata *pdata = FUNC0(dev);

	pdata->wdt_set_timeout(dev->parent, 0);
	return 0;
}