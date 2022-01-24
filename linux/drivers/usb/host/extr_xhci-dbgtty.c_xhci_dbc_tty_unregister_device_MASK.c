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
struct xhci_hcd {struct xhci_dbc* dbc; } ;
struct dbc_port {int registered; int /*<<< orphan*/  write_pool; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  read_pool; int /*<<< orphan*/  write_fifo; } ;
struct xhci_dbc {struct dbc_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  dbc_tty_driver ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dbc_port*) ; 

void FUNC6(struct xhci_hcd *xhci)
{
	struct xhci_dbc		*dbc = xhci->dbc;
	struct dbc_port		*port = &dbc->port;

	FUNC3(dbc_tty_driver, 0);
	FUNC5(port);
	port->registered = false;

	FUNC2(&port->write_fifo);
	FUNC4(FUNC1(xhci), &port->read_pool);
	FUNC4(FUNC1(xhci), &port->read_queue);
	FUNC4(FUNC0(xhci), &port->write_pool);
}