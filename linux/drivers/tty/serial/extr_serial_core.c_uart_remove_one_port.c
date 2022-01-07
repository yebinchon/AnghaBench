
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int mutex; int tty; } ;
struct uart_state {int * uart_port; int refcount; int remove_wait; struct tty_port port; } ;
struct uart_port {scalar_t__ type; int name; int tty_groups; TYPE_1__* ops; int cons; int line; int flags; int dev; } ;
struct uart_driver {int tty_driver; struct uart_state* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int (* release_port ) (struct uart_port*) ;} ;


 int BUG_ON (int ) ;
 int EINVAL ;
 scalar_t__ PORT_UNKNOWN ;
 int UPF_DEAD ;
 int WARN_ON (int) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_read (int *) ;
 int dev_alert (int ,char*,struct uart_port*,struct uart_port*) ;
 int in_interrupt () ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int port_mutex ;
 int stub1 (struct uart_port*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (struct tty_port*) ;
 int tty_port_unregister_device (struct tty_port*,int ,int ) ;
 int tty_vhangup (int ) ;
 scalar_t__ uart_console (struct uart_port*) ;
 struct uart_port* uart_port_check (struct uart_state*) ;
 int unregister_console (int ) ;
 int wait_event (int ,int) ;

int uart_remove_one_port(struct uart_driver *drv, struct uart_port *uport)
{
 struct uart_state *state = drv->state + uport->line;
 struct tty_port *port = &state->port;
 struct uart_port *uart_port;
 struct tty_struct *tty;
 int ret = 0;

 BUG_ON(in_interrupt());

 mutex_lock(&port_mutex);





 mutex_lock(&port->mutex);
 uart_port = uart_port_check(state);
 if (uart_port != uport)
  dev_alert(uport->dev, "Removing wrong port: %p != %p\n",
     uart_port, uport);

 if (!uart_port) {
  mutex_unlock(&port->mutex);
  ret = -EINVAL;
  goto out;
 }
 uport->flags |= UPF_DEAD;
 mutex_unlock(&port->mutex);




 tty_port_unregister_device(port, drv->tty_driver, uport->line);

 tty = tty_port_tty_get(port);
 if (tty) {
  tty_vhangup(port->tty);
  tty_kref_put(tty);
 }




 if (uart_console(uport))
  unregister_console(uport->cons);




 if (uport->type != PORT_UNKNOWN && uport->ops->release_port)
  uport->ops->release_port(uport);
 kfree(uport->tty_groups);
 kfree(uport->name);




 uport->type = PORT_UNKNOWN;

 mutex_lock(&port->mutex);
 WARN_ON(atomic_dec_return(&state->refcount) < 0);
 wait_event(state->remove_wait, !atomic_read(&state->refcount));
 state->uart_port = ((void*)0);
 mutex_unlock(&port->mutex);
out:
 mutex_unlock(&port_mutex);

 return ret;
}
