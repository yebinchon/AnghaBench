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
struct evtchn_fifo_control_block {int /*<<< orphan*/  ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHN_FIFO_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct evtchn_fifo_control_block*,unsigned int,unsigned long*,int) ; 
 int /*<<< orphan*/  cpu_control_block ; 
 unsigned int FUNC1 (unsigned long*,int /*<<< orphan*/ ) ; 
 struct evtchn_fifo_control_block* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned cpu, bool drop)
{
	struct evtchn_fifo_control_block *control_block;
	unsigned long ready;
	unsigned q;

	control_block = FUNC2(cpu_control_block, cpu);

	ready = FUNC3(&control_block->ready, 0);

	while (ready) {
		q = FUNC1(&ready, EVTCHN_FIFO_MAX_QUEUES);
		FUNC0(cpu, control_block, q, &ready, drop);
		ready |= FUNC3(&control_block->ready, 0);
	}
}