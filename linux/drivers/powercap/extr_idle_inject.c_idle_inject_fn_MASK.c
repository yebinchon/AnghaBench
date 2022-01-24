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
struct idle_inject_thread {scalar_t__ should_run; } ;
struct idle_inject_device {int /*<<< orphan*/  idle_duration_us; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idle_inject_device ; 
 int /*<<< orphan*/  idle_inject_thread ; 
 struct idle_inject_device* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct idle_inject_thread* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned int cpu)
{
	struct idle_inject_device *ii_dev;
	struct idle_inject_thread *iit;

	ii_dev = FUNC1(idle_inject_device, cpu);
	iit = FUNC2(&idle_inject_thread, cpu);

	/*
	 * Let the smpboot main loop know that the task should not run again.
	 */
	iit->should_run = 0;

	FUNC3(FUNC0(ii_dev->idle_duration_us));
}