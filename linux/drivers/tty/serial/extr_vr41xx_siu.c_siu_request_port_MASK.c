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
struct uart_port {int flags; int /*<<< orphan*/ * membase; int /*<<< orphan*/  mapbase; } ;
struct resource {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port)
{
	unsigned long size;
	struct resource *res;

	size = FUNC3(port);
	res = FUNC2(port->mapbase, size, FUNC4(port));
	if (res == NULL)
		return -EBUSY;

	if (port->flags & UPF_IOREMAP) {
		port->membase = FUNC0(port->mapbase, size);
		if (port->membase == NULL) {
			FUNC1(res);
			return -ENOMEM;
		}
	}

	return 0;
}