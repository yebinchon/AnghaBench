#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int nr; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct platform_device*) ; 
 TYPE_1__ siu_uart_driver ; 
 int /*<<< orphan*/  siu_uart_ops ; 
 struct uart_port* siu_uart_ports ; 
 int FUNC1 (TYPE_1__*,struct uart_port*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	struct uart_port *port;
	int num, i, retval;

	num = FUNC0(dev);
	if (num <= 0)
		return -ENODEV;

	siu_uart_driver.nr = num;
	retval = FUNC2(&siu_uart_driver);
	if (retval)
		return retval;

	for (i = 0; i < num; i++) {
		port = &siu_uart_ports[i];
		port->ops = &siu_uart_ops;
		port->dev = &dev->dev;

		retval = FUNC1(&siu_uart_driver, port);
		if (retval < 0) {
			port->dev = NULL;
			break;
		}
	}

	if (i == 0 && retval < 0) {
		FUNC3(&siu_uart_driver);
		return retval;
	}

	return 0;
}