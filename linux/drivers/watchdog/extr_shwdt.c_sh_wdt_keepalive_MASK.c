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
struct sh_wdt {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int HZ ; 
 int heartbeat ; 
 scalar_t__ jiffies ; 
 scalar_t__ next_heartbeat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sh_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdt_dev)
{
	struct sh_wdt *wdt = FUNC2(wdt_dev);
	unsigned long flags;

	FUNC0(&wdt->lock, flags);
	next_heartbeat = jiffies + (heartbeat * HZ);
	FUNC1(&wdt->lock, flags);

	return 0;
}