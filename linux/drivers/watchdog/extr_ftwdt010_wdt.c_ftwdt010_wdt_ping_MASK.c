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
struct ftwdt010_wdt {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FTWDT010_WDRESTART ; 
 int /*<<< orphan*/  WDRESTART_MAGIC ; 
 struct ftwdt010_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct ftwdt010_wdt *gwdt = FUNC0(wdd);

	FUNC1(WDRESTART_MAGIC, gwdt->base + FTWDT010_WDRESTART);

	return 0;
}