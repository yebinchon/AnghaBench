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
struct evtchn_bind_ipi {int port; int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EVTCHNOP_bind_ipi ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct evtchn_bind_ipi*) ; 
 int XEN_NR_IPIS ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  ipi_to_irq ; 
 int* FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

__attribute__((used)) static void FUNC8(unsigned int cpu)
{
	struct evtchn_bind_ipi bind_ipi;
	int ipi, irq, evtchn;

	for (ipi = 0; ipi < XEN_NR_IPIS; ipi++) {
		if ((irq = FUNC5(ipi_to_irq, cpu)[ipi]) == -1)
			continue;

		FUNC1(FUNC4(irq) != ipi);

		/* Get a new binding from Xen. */
		bind_ipi.vcpu = FUNC7(cpu);
		if (FUNC2(EVTCHNOP_bind_ipi,
						&bind_ipi) != 0)
			FUNC0();
		evtchn = bind_ipi.port;

		/* Record the new mapping. */
		(void)FUNC6(cpu, irq, evtchn, ipi);
		FUNC3(evtchn, cpu);
	}
}