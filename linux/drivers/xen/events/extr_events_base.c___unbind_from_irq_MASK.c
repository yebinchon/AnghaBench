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
struct irq_info {scalar_t__ refcnt; } ;

/* Variables and functions */
#define  IRQT_IPI 129 
#define  IRQT_VIRQ 128 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 size_t FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  ipi_to_irq ; 
 struct irq_info* FUNC4 (unsigned int) ; 
 int* FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 size_t FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  virq_to_irq ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_info*) ; 

__attribute__((used)) static void FUNC11(unsigned int irq)
{
	int evtchn = FUNC2(irq);
	struct irq_info *info = FUNC4(irq);

	if (info->refcnt > 0) {
		info->refcnt--;
		if (info->refcnt != 0)
			return;
	}

	if (FUNC0(evtchn)) {
		unsigned int cpu = FUNC1(irq);

		FUNC8(evtchn);

		switch (FUNC6(irq)) {
		case IRQT_VIRQ:
			FUNC5(virq_to_irq, cpu)[FUNC7(irq)] = -1;
			break;
		case IRQT_IPI:
			FUNC5(ipi_to_irq, cpu)[FUNC3(irq)] = -1;
			break;
		default:
			break;
		}

		FUNC10(info);
	}

	FUNC9(irq);
}