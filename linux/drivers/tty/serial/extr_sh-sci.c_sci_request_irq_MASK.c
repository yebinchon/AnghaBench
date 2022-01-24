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
struct uart_port {int irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  irqflags; } ;
struct sci_port {int* irqs; int /*<<< orphan*/ * irqstr; struct uart_port port; } ;
struct sci_irq_desc {int /*<<< orphan*/  desc; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sci_port*) ; 
 int SCIx_MUX_IRQ ; 
 int SCIx_NR_IRQS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct sci_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sci_port*) ; 
 struct sci_irq_desc* sci_irq_desc ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct sci_port *port)
{
	struct uart_port *up = &port->port;
	int i, j, w, ret = 0;

	for (i = j = 0; i < SCIx_NR_IRQS; i++, j++) {
		const struct sci_irq_desc *desc;
		int irq;

		/* Check if already registered (muxed) */
		for (w = 0; w < i; w++)
			if (port->irqs[w] == port->irqs[i])
				w = i + 1;
		if (w > i)
			continue;

		if (FUNC0(port)) {
			i = SCIx_MUX_IRQ;
			irq = up->irq;
		} else {
			irq = port->irqs[i];

			/*
			 * Certain port types won't support all of the
			 * available interrupt sources.
			 */
			if (FUNC7(irq < 0))
				continue;
		}

		desc = sci_irq_desc + i;
		port->irqstr[j] = FUNC4(GFP_KERNEL, "%s:%s",
					    FUNC2(up->dev), desc->desc);
		if (!port->irqstr[j]) {
			ret = -ENOMEM;
			goto out_nomem;
		}

		ret = FUNC6(irq, desc->handler, up->irqflags,
				  port->irqstr[j], port);
		if (FUNC7(ret)) {
			FUNC1(up->dev, "Can't allocate %s IRQ\n", desc->desc);
			goto out_noirq;
		}
	}

	return 0;

out_noirq:
	while (--i >= 0)
		FUNC3(port->irqs[i], port);

out_nomem:
	while (--j >= 0)
		FUNC5(port->irqstr[j]);

	return ret;
}