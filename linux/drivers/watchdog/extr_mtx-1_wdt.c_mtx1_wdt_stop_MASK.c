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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  default_ticks; int /*<<< orphan*/  gpiod; scalar_t__ gstate; scalar_t__ queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ mtx1_wdt_device ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  ticks ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long flags;

	FUNC1(&mtx1_wdt_device.lock, flags);
	if (mtx1_wdt_device.queue) {
		mtx1_wdt_device.queue = 0;
		mtx1_wdt_device.gstate = 0;
		FUNC0(mtx1_wdt_device.gpiod, 0);
	}
	ticks = mtx1_wdt_device.default_ticks;
	FUNC2(&mtx1_wdt_device.lock, flags);
	return 0;
}