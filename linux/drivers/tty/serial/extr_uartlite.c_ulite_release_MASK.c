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
struct uartlite_data {int /*<<< orphan*/  ulite_uart_driver; } ;
struct uart_port {scalar_t__ mapbase; struct uartlite_data* private_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct uart_port* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct uart_port*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct uart_port *port = FUNC0(dev);
	int rc = 0;

	if (port) {
		struct uartlite_data *pdata = port->private_data;

		rc = FUNC2(pdata->ulite_uart_driver, port);
		FUNC1(dev, NULL);
		port->mapbase = 0;
	}

	return rc;
}