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
struct watchdog_device {unsigned int timeout; } ;
struct sh_wdt {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int heartbeat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 struct sh_wdt* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdt_dev, unsigned t)
{
	struct sh_wdt *wdt = FUNC3(wdt_dev);
	unsigned long flags;

	if (FUNC2(t < 1 || t > 3600)) /* arbitrary upper limit */
		return -EINVAL;

	FUNC0(&wdt->lock, flags);
	heartbeat = t;
	wdt_dev->timeout = t;
	FUNC1(&wdt->lock, flags);

	return 0;
}