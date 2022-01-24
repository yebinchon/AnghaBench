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
struct evtchn_bind_virq {int virq; int port; int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EVTCHNOP_bind_virq ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct evtchn_bind_virq*) ; 
 int NR_VIRQS ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 int* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  virq_to_irq ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

__attribute__((used)) static void FUNC8(unsigned int cpu)
{
	struct evtchn_bind_virq bind_virq;
	int virq, irq, evtchn;

	for (virq = 0; virq < NR_VIRQS; virq++) {
		if ((irq = FUNC4(virq_to_irq, cpu)[virq]) == -1)
			continue;

		FUNC1(FUNC5(irq) != virq);

		/* Get a new binding from Xen. */
		bind_virq.virq = virq;
		bind_virq.vcpu = FUNC7(cpu);
		if (FUNC2(EVTCHNOP_bind_virq,
						&bind_virq) != 0)
			FUNC0();
		evtchn = bind_virq.port;

		/* Record the new mapping. */
		(void)FUNC6(cpu, irq, evtchn, virq);
		FUNC3(evtchn, cpu);
	}
}