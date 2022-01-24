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
struct evtchn_bind_virq {unsigned int virq; int port; int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int /*<<< orphan*/  EVTCHNOP_bind_virq ; 
 int FUNC1 (int /*<<< orphan*/ ,struct evtchn_bind_virq*) ; 
 scalar_t__ IRQT_VIRQ ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 struct irq_info* FUNC6 (int) ; 
 int /*<<< orphan*/  irq_mapping_update_lock ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int* FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  virq_to_irq ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  xen_dynamic_chip ; 
 int FUNC12 (unsigned int,int,int,unsigned int) ; 
 int /*<<< orphan*/  xen_percpu_chip ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 

int FUNC14(unsigned int virq, unsigned int cpu, bool percpu)
{
	struct evtchn_bind_virq bind_virq;
	int evtchn, irq, ret;

	FUNC8(&irq_mapping_update_lock);

	irq = FUNC10(virq_to_irq, cpu)[virq];

	if (irq == -1) {
		irq = FUNC11();
		if (irq < 0)
			goto out;

		if (percpu)
			FUNC7(irq, &xen_percpu_chip,
						      handle_percpu_irq, "virq");
		else
			FUNC7(irq, &xen_dynamic_chip,
						      handle_edge_irq, "virq");

		bind_virq.virq = virq;
		bind_virq.vcpu = FUNC13(cpu);
		ret = FUNC1(EVTCHNOP_bind_virq,
						&bind_virq);
		if (ret == 0)
			evtchn = bind_virq.port;
		else {
			if (ret == -EEXIST)
				ret = FUNC5(virq, cpu);
			FUNC0(ret < 0);
			evtchn = ret;
		}

		ret = FUNC12(cpu, irq, evtchn, virq);
		if (ret < 0) {
			FUNC3(irq);
			irq = ret;
			goto out;
		}

		FUNC4(evtchn, cpu);
	} else {
		struct irq_info *info = FUNC6(irq);
		FUNC2(info == NULL || info->type != IRQT_VIRQ);
	}

out:
	FUNC9(&irq_mapping_update_lock);

	return irq;
}