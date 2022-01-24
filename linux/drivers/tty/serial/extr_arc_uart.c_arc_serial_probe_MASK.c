#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct uart_port {int line; scalar_t__ ignore_status_mask; int /*<<< orphan*/  fifosize; int /*<<< orphan*/ * ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  iotype; TYPE_1__* dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  membase; void* uartclk; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct arc_uart_port {struct uart_port port; void* baud; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_UART_TX_FIFO_SIZE ; 
 int FUNC0 (struct arc_uart_port*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  arc_serial_pops ; 
 int /*<<< orphan*/  arc_uart_driver ; 
 struct arc_uart_port* arc_uart_ports ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,void**) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct arc_uart_port *uart;
	struct uart_port *port;
	int dev_id;
	u32 val;

	/* no device tree device */
	if (!np)
		return -ENODEV;

	dev_id = FUNC3(np, "serial");
	if (dev_id < 0)
		dev_id = 0;

	if (dev_id >= FUNC0(arc_uart_ports)) {
		FUNC1(&pdev->dev, "serial%d out of range\n", dev_id);
		return -EINVAL;
	}

	uart = &arc_uart_ports[dev_id];
	port = &uart->port;

	if (FUNC5(np, "clock-frequency", &val)) {
		FUNC1(&pdev->dev, "clock-frequency property NOTset\n");
		return -EINVAL;
	}
	port->uartclk = val;

	if (FUNC5(np, "current-speed", &val)) {
		FUNC1(&pdev->dev, "current-speed property NOT set\n");
		return -EINVAL;
	}
	uart->baud = val;

	port->membase = FUNC4(np, 0);
	if (!port->membase)
		/* No point of dev_err since UART itself is hosed here */
		return -ENXIO;

	port->irq = FUNC2(np, 0);

	port->dev = &pdev->dev;
	port->iotype = UPIO_MEM;
	port->flags = UPF_BOOT_AUTOCONF;
	port->line = dev_id;
	port->ops = &arc_serial_pops;

	port->fifosize = ARC_UART_TX_FIFO_SIZE;

	/*
	 * uart_insert_char( ) uses it in decideding whether to ignore a
	 * char or not. Explicitly setting it here, removes the subtelty
	 */
	port->ignore_status_mask = 0;

	return FUNC6(&arc_uart_driver, &arc_uart_ports[dev_id].port);
}