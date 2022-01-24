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
struct uartlite_data {int /*<<< orphan*/ * reg_ops; } ;
struct uart_port {scalar_t__ mapbase; int /*<<< orphan*/  dev; int /*<<< orphan*/  membase; struct uartlite_data* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ULITE_CONTROL ; 
 int /*<<< orphan*/  ULITE_CONTROL_RST_TX ; 
 int /*<<< orphan*/  ULITE_REGION ; 
 int /*<<< orphan*/  ULITE_STATUS ; 
 int ULITE_STATUS_TXEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct uart_port*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  uartlite_be ; 
 int /*<<< orphan*/  uartlite_le ; 

__attribute__((used)) static int FUNC7(struct uart_port *port)
{
	struct uartlite_data *pdata = port->private_data;
	int ret;

	FUNC2("ulite console: port=%p; port->mapbase=%llx\n",
		 port, (unsigned long long) port->mapbase);

	if (!FUNC4(port->mapbase, ULITE_REGION, "uartlite")) {
		FUNC0(port->dev, "Memory region busy\n");
		return -EBUSY;
	}

	port->membase = FUNC1(port->mapbase, ULITE_REGION);
	if (!port->membase) {
		FUNC0(port->dev, "Unable to map registers\n");
		FUNC3(port->mapbase, ULITE_REGION);
		return -EBUSY;
	}

	pdata->reg_ops = &uartlite_be;
	ret = FUNC5(ULITE_CONTROL, port);
	FUNC6(ULITE_CONTROL_RST_TX, ULITE_CONTROL, port);
	ret = FUNC5(ULITE_STATUS, port);
	/* Endianess detection */
	if ((ret & ULITE_STATUS_TXEMPTY) != ULITE_STATUS_TXEMPTY)
		pdata->reg_ops = &uartlite_le;

	return 0;
}