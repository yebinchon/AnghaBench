
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {struct xhci_dbc* dbc; } ;
struct dbc_port {int registered; int write_pool; int read_queue; int read_pool; int write_fifo; } ;
struct xhci_dbc {struct dbc_port port; } ;


 int dbc_tty_driver ;
 int get_in_ep (struct xhci_hcd*) ;
 int get_out_ep (struct xhci_hcd*) ;
 int kfifo_free (int *) ;
 int tty_unregister_device (int ,int ) ;
 int xhci_dbc_free_requests (int ,int *) ;
 int xhci_dbc_tty_exit_port (struct dbc_port*) ;

void xhci_dbc_tty_unregister_device(struct xhci_hcd *xhci)
{
 struct xhci_dbc *dbc = xhci->dbc;
 struct dbc_port *port = &dbc->port;

 tty_unregister_device(dbc_tty_driver, 0);
 xhci_dbc_tty_exit_port(port);
 port->registered = 0;

 kfifo_free(&port->write_fifo);
 xhci_dbc_free_requests(get_out_ep(xhci), &port->read_pool);
 xhci_dbc_free_requests(get_out_ep(xhci), &port->read_queue);
 xhci_dbc_free_requests(get_in_ep(xhci), &port->write_pool);
}
