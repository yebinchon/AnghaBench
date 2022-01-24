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
struct TYPE_2__ {int queue; int gstate; int /*<<< orphan*/  lock; int /*<<< orphan*/  running; int /*<<< orphan*/  timer; int /*<<< orphan*/  gpiod; } ;

/* Variables and functions */
 scalar_t__ MTX1_WDT_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__ mtx1_wdt_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long flags;

	FUNC2(&mtx1_wdt_device.lock, flags);
	if (!mtx1_wdt_device.queue) {
		mtx1_wdt_device.queue = 1;
		mtx1_wdt_device.gstate = 1;
		FUNC0(mtx1_wdt_device.gpiod, 1);
		FUNC1(&mtx1_wdt_device.timer, jiffies + MTX1_WDT_INTERVAL);
	}
	mtx1_wdt_device.running++;
	FUNC3(&mtx1_wdt_device.lock, flags);
}