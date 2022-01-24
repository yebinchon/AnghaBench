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
struct uart_port {int /*<<< orphan*/  irq; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct ltq_uart_port {int /*<<< orphan*/  err_irq; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; struct uart_port port; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct resource*,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct ltq_uart_port *ltq_port)
{
	struct uart_port *port = &ltq_port->port;
	struct resource irqres[3];
	int ret;

	ret = FUNC1(dev->of_node, irqres, 3);
	if (ret != 3) {
		FUNC0(dev,
			"failed to get IRQs for serial port\n");
		return -ENODEV;
	}
	ltq_port->tx_irq = irqres[0].start;
	ltq_port->rx_irq = irqres[1].start;
	ltq_port->err_irq = irqres[2].start;
	port->irq = irqres[0].start;

	return 0;
}