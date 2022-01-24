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
struct task_struct {int dummy; } ;
struct qedi_percpu_s {struct task_struct* iothread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,unsigned int) ; 
 struct task_struct* FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  qedi_percpu ; 
 int /*<<< orphan*/  qedi_percpu_io_thread ; 
 struct qedi_percpu_s* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static int FUNC7(unsigned int cpu)
{
	struct qedi_percpu_s *p = FUNC5(&qedi_percpu);
	struct task_struct *thread;

	thread = FUNC4(qedi_percpu_io_thread, (void *)p,
					FUNC2(cpu),
					"qedi_thread/%d", cpu);
	if (FUNC0(thread))
		return FUNC1(thread);

	FUNC3(thread, cpu);
	p->iothread = thread;
	FUNC6(thread);
	return 0;
}