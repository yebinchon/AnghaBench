#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  ticks; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ bcm63xx_wdt_device ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *unused)
{
	if (!FUNC0(&bcm63xx_wdt_device.ticks)) {
		FUNC1();
		FUNC2(&bcm63xx_wdt_device.timer, jiffies + HZ);
	} else
		FUNC3("watchdog will restart system\n");
}