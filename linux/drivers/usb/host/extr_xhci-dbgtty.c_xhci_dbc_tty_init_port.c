
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_hcd {int dummy; } ;
struct TYPE_2__ {int * ops; } ;
struct dbc_port {scalar_t__ n_read; TYPE_1__ port; int out; int in; int write_pool; int read_queue; int read_pool; int push; int port_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int dbc_port_ops ;
 int dbc_rx_push ;
 int get_in_ep (struct xhci_hcd*) ;
 int get_out_ep (struct xhci_hcd*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tty_port_init (TYPE_1__*) ;

__attribute__((used)) static void
xhci_dbc_tty_init_port(struct xhci_hcd *xhci, struct dbc_port *port)
{
 tty_port_init(&port->port);
 spin_lock_init(&port->port_lock);
 tasklet_init(&port->push, dbc_rx_push, (unsigned long)port);
 INIT_LIST_HEAD(&port->read_pool);
 INIT_LIST_HEAD(&port->read_queue);
 INIT_LIST_HEAD(&port->write_pool);

 port->in = get_in_ep(xhci);
 port->out = get_out_ep(xhci);
 port->port.ops = &dbc_port_ops;
 port->n_read = 0;
}
