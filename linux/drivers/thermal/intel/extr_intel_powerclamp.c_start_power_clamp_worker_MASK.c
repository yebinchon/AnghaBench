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
struct powerclamp_worker_data {unsigned long cpu; int clamping; int /*<<< orphan*/  balancing_work; struct kthread_worker* worker; int /*<<< orphan*/  idle_injection_work; scalar_t__ count; } ;
struct kthread_worker {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kthread_worker*) ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  clamp_balancing_func ; 
 int /*<<< orphan*/  clamp_idle_injection_func ; 
 int /*<<< orphan*/  cpu_clamping_mask ; 
 struct kthread_worker* FUNC1 (unsigned long,int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kthread_worker*,int /*<<< orphan*/ *) ; 
 struct powerclamp_worker_data* FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sparam ; 
 int /*<<< orphan*/  worker_data ; 

__attribute__((used)) static void FUNC8(unsigned long cpu)
{
	struct powerclamp_worker_data *w_data = FUNC5(worker_data, cpu);
	struct kthread_worker *worker;

	worker = FUNC1(cpu, 0, "kidle_inj/%ld", cpu);
	if (FUNC0(worker))
		return;

	w_data->worker = worker;
	w_data->count = 0;
	w_data->cpu = cpu;
	w_data->clamping = true;
	FUNC7(cpu, cpu_clamping_mask);
	FUNC6(worker->task, SCHED_FIFO, &sparam);
	FUNC3(&w_data->balancing_work, clamp_balancing_func);
	FUNC2(&w_data->idle_injection_work,
				  clamp_idle_injection_func);
	FUNC4(w_data->worker, &w_data->balancing_work);
}