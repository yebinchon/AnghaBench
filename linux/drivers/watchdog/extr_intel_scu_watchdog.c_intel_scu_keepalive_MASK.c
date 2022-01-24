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
struct TYPE_2__ {int soft_threshold; int /*<<< orphan*/  timer_control_addr; int /*<<< orphan*/  timer_load_count_addr; int /*<<< orphan*/  timer_clear_interrupt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ watchdog_device ; 

__attribute__((used)) static int FUNC2(void)
{

	/* read eoi register - clears interrupt */
	FUNC0(watchdog_device.timer_clear_interrupt_addr);

	/* temporarily disable the timer */
	FUNC1(0x00000002, watchdog_device.timer_control_addr);

	/* set the timer to the soft_threshold */
	FUNC1(watchdog_device.soft_threshold,
		  watchdog_device.timer_load_count_addr);

	/* allow the timer to run */
	FUNC1(0x00000003, watchdog_device.timer_control_addr);

	return 0;
}