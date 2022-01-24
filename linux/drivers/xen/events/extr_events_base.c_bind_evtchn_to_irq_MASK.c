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

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ IRQT_EVTCHN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 struct irq_info* FUNC4 (int) ; 
 int /*<<< orphan*/  irq_mapping_update_lock ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  xen_dynamic_chip ; 
 unsigned int FUNC9 () ; 
 int FUNC10 (int,unsigned int) ; 

int FUNC11(unsigned int evtchn)
{
	int irq;
	int ret;

	if (evtchn >= FUNC9())
		return -ENOMEM;

	FUNC6(&irq_mapping_update_lock);

	irq = FUNC3(evtchn);

	if (irq == -1) {
		irq = FUNC8();
		if (irq < 0)
			goto out;

		FUNC5(irq, &xen_dynamic_chip,
					      handle_edge_irq, "event");

		ret = FUNC10(irq, evtchn);
		if (ret < 0) {
			FUNC1(irq);
			irq = ret;
			goto out;
		}
		/* New interdomain events are bound to VCPU 0. */
		FUNC2(evtchn, 0);
	} else {
		struct irq_info *info = FUNC4(irq);
		FUNC0(info == NULL || info->type != IRQT_EVTCHN);
	}

out:
	FUNC7(&irq_mapping_update_lock);

	return irq;
}