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
struct uart_port {int /*<<< orphan*/  mapbase; int /*<<< orphan*/  dev; int /*<<< orphan*/  membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_UART_NAME ; 
 int /*<<< orphan*/  CDNS_UART_REGISTER_SPACE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	if (!FUNC3(port->mapbase, CDNS_UART_REGISTER_SPACE,
					 CDNS_UART_NAME)) {
		return -ENOMEM;
	}

	port->membase = FUNC1(port->mapbase, CDNS_UART_REGISTER_SPACE);
	if (!port->membase) {
		FUNC0(port->dev, "Unable to map registers\n");
		FUNC2(port->mapbase, CDNS_UART_REGISTER_SPACE);
		return -ENOMEM;
	}
	return 0;
}