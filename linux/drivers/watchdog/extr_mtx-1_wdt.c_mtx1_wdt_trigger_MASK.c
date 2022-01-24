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
struct TYPE_2__ {int gstate; int /*<<< orphan*/  lock; int /*<<< orphan*/  stop; int /*<<< orphan*/  timer; scalar_t__ queue; int /*<<< orphan*/  gpiod; scalar_t__ running; } ;

/* Variables and functions */
 scalar_t__ MTX1_WDT_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__ mtx1_wdt_device ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void FUNC5(struct timer_list *unused)
{
	FUNC3(&mtx1_wdt_device.lock);
	if (mtx1_wdt_device.running)
		ticks--;

	/* toggle wdt gpio */
	mtx1_wdt_device.gstate = !mtx1_wdt_device.gstate;
	FUNC1(mtx1_wdt_device.gpiod, mtx1_wdt_device.gstate);

	if (mtx1_wdt_device.queue && ticks)
		FUNC2(&mtx1_wdt_device.timer, jiffies + MTX1_WDT_INTERVAL);
	else
		FUNC0(&mtx1_wdt_device.stop);
	FUNC4(&mtx1_wdt_device.lock);
}