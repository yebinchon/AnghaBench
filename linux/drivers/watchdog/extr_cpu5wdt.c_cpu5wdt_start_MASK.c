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
struct TYPE_2__ {int queue; int /*<<< orphan*/  running; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ CPU5WDT_ENABLE_REG ; 
 scalar_t__ CPU5WDT_INTERVAL ; 
 scalar_t__ CPU5WDT_MODE_REG ; 
 scalar_t__ CPU5WDT_RESET_REG ; 
 scalar_t__ CPU5WDT_TIME_A_REG ; 
 scalar_t__ CPU5WDT_TIME_B_REG ; 
 TYPE_1__ cpu5wdt_device ; 
 int /*<<< orphan*/  cpu5wdt_lock ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__ port ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long flags;

	FUNC2(&cpu5wdt_lock, flags);
	if (!cpu5wdt_device.queue) {
		cpu5wdt_device.queue = 1;
		FUNC1(0, port + CPU5WDT_TIME_A_REG);
		FUNC1(0, port + CPU5WDT_TIME_B_REG);
		FUNC1(1, port + CPU5WDT_MODE_REG);
		FUNC1(0, port + CPU5WDT_RESET_REG);
		FUNC1(0, port + CPU5WDT_ENABLE_REG);
		FUNC0(&cpu5wdt_device.timer, jiffies + CPU5WDT_INTERVAL);
	}
	/* if process dies, counter is not decremented */
	cpu5wdt_device.running++;
	FUNC3(&cpu5wdt_lock, flags);
}