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
struct uart_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  arc_serial_isr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_port*) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	/* Before we hook up the ISR, Disable all UART Interrupts */
	FUNC0(port);

	if (FUNC3(port->irq, arc_serial_isr, 0, "arc uart rx-tx", port)) {
		FUNC2(port->dev, "Unable to attach ARC UART intr\n");
		return -EBUSY;
	}

	FUNC1(port); /* Only Rx IRQ enabled to begin with */

	return 0;
}