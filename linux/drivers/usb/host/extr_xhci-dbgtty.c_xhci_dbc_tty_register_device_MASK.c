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
struct dbc_port {int registered; int /*<<< orphan*/  write_fifo; int /*<<< orphan*/  write_pool; int /*<<< orphan*/  out; int /*<<< orphan*/  read_pool; int /*<<< orphan*/  in; int /*<<< orphan*/  port; } ;
struct xhci_dbc {struct dbc_port port; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBC_WRITE_BUF_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  dbc_read_complete ; 
 int /*<<< orphan*/  dbc_tty_driver ; 
 int /*<<< orphan*/  dbc_write_complete ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dbc_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,struct dbc_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,char*,int) ; 

int FUNC11(struct xhci_hcd *xhci)
{
	int			ret;
	struct device		*tty_dev;
	struct xhci_dbc		*dbc = xhci->dbc;
	struct dbc_port		*port = &dbc->port;

	FUNC9(xhci, port);
	tty_dev = FUNC4(&port->port,
					   dbc_tty_driver, 0, NULL);
	if (FUNC0(tty_dev)) {
		ret = FUNC1(tty_dev);
		goto register_fail;
	}

	ret = FUNC2(&port->write_fifo, DBC_WRITE_BUF_SIZE, GFP_KERNEL);
	if (ret)
		goto buf_alloc_fail;

	ret = FUNC6(port->in, &port->read_pool,
				      dbc_read_complete);
	if (ret)
		goto request_fail;

	ret = FUNC6(port->out, &port->write_pool,
				      dbc_write_complete);
	if (ret)
		goto request_fail;

	port->registered = true;

	return 0;

request_fail:
	FUNC7(port->in, &port->read_pool);
	FUNC7(port->out, &port->write_pool);
	FUNC3(&port->write_fifo);

buf_alloc_fail:
	FUNC5(dbc_tty_driver, 0);

register_fail:
	FUNC8(port);

	FUNC10(xhci, "can't register tty port, err %d\n", ret);

	return ret;
}