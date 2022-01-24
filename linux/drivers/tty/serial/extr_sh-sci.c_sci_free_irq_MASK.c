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
struct sci_port {int* irqs; int /*<<< orphan*/ * irqstr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sci_port*) ; 
 int SCIx_NR_IRQS ; 
 int /*<<< orphan*/  FUNC1 (int,struct sci_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct sci_port *port)
{
	int i, j;

	/*
	 * Intentionally in reverse order so we iterate over the muxed
	 * IRQ first.
	 */
	for (i = 0; i < SCIx_NR_IRQS; i++) {
		int irq = port->irqs[i];

		/*
		 * Certain port types won't support all of the available
		 * interrupt sources.
		 */
		if (FUNC3(irq < 0))
			continue;

		/* Check if already freed (irq was muxed) */
		for (j = 0; j < i; j++)
			if (port->irqs[j] == irq)
				j = i + 1;
		if (j > i)
			continue;

		FUNC1(port->irqs[i], port);
		FUNC2(port->irqstr[i]);

		if (FUNC0(port)) {
			/* If there's only one IRQ, we're done. */
			return;
		}
	}
}