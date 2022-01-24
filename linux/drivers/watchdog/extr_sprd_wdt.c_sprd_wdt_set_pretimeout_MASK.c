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
typedef  int /*<<< orphan*/  u32 ;
struct watchdog_device {int /*<<< orphan*/  timeout; int /*<<< orphan*/  pretimeout; int /*<<< orphan*/  min_timeout; } ;
struct sprd_wdt {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sprd_wdt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sprd_wdt* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd,
				   u32 new_pretimeout)
{
	struct sprd_wdt *wdt = FUNC1(wdd);

	if (new_pretimeout < wdd->min_timeout)
		return -EINVAL;

	wdd->pretimeout = new_pretimeout;

	return FUNC0(wdt, wdd->timeout, new_pretimeout);
}