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
struct TYPE_2__ {int /*<<< orphan*/  default_ticks; scalar_t__ running; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_1__ cpu5wdt_device ; 
 int /*<<< orphan*/  cpu5wdt_lock ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  ticks ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long flags;

	FUNC1(&cpu5wdt_lock, flags);
	if (cpu5wdt_device.running)
		cpu5wdt_device.running = 0;
	ticks = cpu5wdt_device.default_ticks;
	FUNC2(&cpu5wdt_lock, flags);
	if (verbose)
		FUNC0("stop not possible\n");
	return -EIO;
}