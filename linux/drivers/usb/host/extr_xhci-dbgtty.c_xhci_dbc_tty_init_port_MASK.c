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
struct xhci_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct dbc_port {scalar_t__ n_read; TYPE_1__ port; int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  write_pool; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  read_pool; int /*<<< orphan*/  push; int /*<<< orphan*/  port_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dbc_port_ops ; 
 int /*<<< orphan*/  dbc_rx_push ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(struct xhci_hcd *xhci, struct dbc_port *port)
{
	FUNC5(&port->port);
	FUNC3(&port->port_lock);
	FUNC4(&port->push, dbc_rx_push, (unsigned long)port);
	FUNC0(&port->read_pool);
	FUNC0(&port->read_queue);
	FUNC0(&port->write_pool);

	port->in =		FUNC1(xhci);
	port->out =		FUNC2(xhci);
	port->port.ops =	&dbc_port_ops;
	port->n_read =		0;
}