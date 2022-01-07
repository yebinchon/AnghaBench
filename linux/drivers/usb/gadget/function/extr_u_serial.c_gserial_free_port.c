
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_port {int port; int * port_usb; int close_wait; int push; } ;


 int WARN_ON (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int gs_closed (struct gs_port*) ;
 int kfree (struct gs_port*) ;
 int tty_port_destroy (int *) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static void gserial_free_port(struct gs_port *port)
{
 cancel_delayed_work_sync(&port->push);

 wait_event(port->close_wait, gs_closed(port));
 WARN_ON(port->port_usb != ((void*)0));
 tty_port_destroy(&port->port);
 kfree(port);
}
