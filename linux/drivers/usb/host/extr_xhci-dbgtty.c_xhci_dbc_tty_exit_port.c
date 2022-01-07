
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbc_port {int port; int push; } ;


 int tasklet_kill (int *) ;
 int tty_port_destroy (int *) ;

__attribute__((used)) static void
xhci_dbc_tty_exit_port(struct dbc_port *port)
{
 tasklet_kill(&port->push);
 tty_port_destroy(&port->port);
}
