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
struct irq_info {scalar_t__ type; } ;
struct evtchn_bind_ipi {int port; int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EVTCHNOP_bind_ipi ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct evtchn_bind_ipi*) ; 
 scalar_t__ IRQT_IPI ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 struct irq_info* FUNC5 (int) ; 
 int /*<<< orphan*/  ipi_to_irq ; 
 int /*<<< orphan*/  irq_mapping_update_lock ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int* FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC10 () ; 
 int FUNC11 (unsigned int,int,int,unsigned int) ; 
 int /*<<< orphan*/  xen_percpu_chip ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 

__attribute__((used)) static int FUNC13(unsigned int ipi, unsigned int cpu)
{
	struct evtchn_bind_ipi bind_ipi;
	int evtchn, irq;
	int ret;

	FUNC7(&irq_mapping_update_lock);

	irq = FUNC9(ipi_to_irq, cpu)[ipi];

	if (irq == -1) {
		irq = FUNC10();
		if (irq < 0)
			goto out;

		FUNC6(irq, &xen_percpu_chip,
					      handle_percpu_irq, "ipi");

		bind_ipi.vcpu = FUNC12(cpu);
		if (FUNC1(EVTCHNOP_bind_ipi,
						&bind_ipi) != 0)
			FUNC0();
		evtchn = bind_ipi.port;

		ret = FUNC11(cpu, irq, evtchn, ipi);
		if (ret < 0) {
			FUNC3(irq);
			irq = ret;
			goto out;
		}
		FUNC4(evtchn, cpu);
	} else {
		struct irq_info *info = FUNC5(irq);
		FUNC2(info == NULL || info->type != IRQT_IPI);
	}

 out:
	FUNC8(&irq_mapping_update_lock);
	return irq;
}