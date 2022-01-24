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
struct uart_port {int irq; } ;
struct ltq_uart_port {int common_irq; struct uart_port port; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct ltq_uart_port *ltq_port)
{
	struct uart_port *port = &ltq_port->port;
	int ret;

	ret = FUNC1(dev->of_node, 0);
	if (ret < 0) {
		FUNC0(dev, "failed to fetch IRQ for serial port\n");
		return ret;
	}
	ltq_port->common_irq = ret;
	port->irq = ret;

	return 0;
}