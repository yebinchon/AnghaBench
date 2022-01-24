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
struct uart_port {int flags; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * membase; TYPE_1__* dev; } ;
struct sci_port {int /*<<< orphan*/  reg_size; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sci_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct sci_port *sport = FUNC2(port);

	if (port->dev->of_node || (port->flags & UPF_IOREMAP)) {
		FUNC0(port->membase);
		port->membase = NULL;
	}

	FUNC1(port->mapbase, sport->reg_size);
}