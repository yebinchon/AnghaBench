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
struct uart_port {int iotype; int flags; int /*<<< orphan*/  iobase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  membase; } ;
struct uart_8250_port {struct uart_port port; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int UPF_IOREMAP ; 
#define  UPIO_AU 135 
#define  UPIO_HUB6 134 
#define  UPIO_MEM 133 
#define  UPIO_MEM16 132 
#define  UPIO_MEM32 131 
#define  UPIO_MEM32BE 130 
#define  UPIO_PORT 129 
#define  UPIO_TSI 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,char*) ; 
 unsigned int FUNC4 (struct uart_8250_port*) ; 

__attribute__((used)) static int FUNC5(struct uart_8250_port *up)
{
	unsigned int size = FUNC4(up);
	struct uart_port *port = &up->port;
	int ret = 0;

	switch (port->iotype) {
	case UPIO_AU:
	case UPIO_TSI:
	case UPIO_MEM32:
	case UPIO_MEM32BE:
	case UPIO_MEM16:
	case UPIO_MEM:
		if (!port->mapbase)
			break;

		if (!FUNC2(port->mapbase, size, "serial")) {
			ret = -EBUSY;
			break;
		}

		if (port->flags & UPF_IOREMAP) {
			port->membase = FUNC0(port->mapbase, size);
			if (!port->membase) {
				FUNC1(port->mapbase, size);
				ret = -ENOMEM;
			}
		}
		break;

	case UPIO_HUB6:
	case UPIO_PORT:
		if (!FUNC3(port->iobase, size, "serial"))
			ret = -EBUSY;
		break;
	}
	return ret;
}