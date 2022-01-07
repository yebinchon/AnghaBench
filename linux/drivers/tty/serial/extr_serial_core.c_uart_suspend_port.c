
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int mutex; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int line; int suspended; int cons; int name; int dev; int lock; struct uart_ops* ops; int irq; } ;
struct uart_ops {int (* shutdown ) (struct uart_port*) ;int (* tx_empty ) (struct uart_port*) ;int (* stop_rx ) (struct uart_port*) ;int (* set_mctrl ) (struct uart_port*,int ) ;int (* stop_tx ) (struct uart_port*) ;} ;
struct uart_match {struct uart_driver* member_1; struct uart_port* member_0; } ;
struct uart_driver {struct uart_state* state; } ;
struct device {int dummy; } ;


 int UART_PM_STATE_OFF ;
 int console_stop (int ) ;
 int console_suspend_enabled ;
 int dev_err (int ,char*,int ) ;
 struct device* device_find_child (int ,struct uart_match*,int ) ;
 scalar_t__ device_may_wakeup (struct device*) ;
 int enable_irq_wake (int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;
 int serial_match_port ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct uart_port*) ;
 int stub2 (struct uart_port*,int ) ;
 int stub3 (struct uart_port*) ;
 int stub4 (struct uart_port*) ;
 int stub5 (struct uart_port*) ;
 scalar_t__ tty_port_initialized (struct tty_port*) ;
 int tty_port_set_initialized (struct tty_port*,int ) ;
 int tty_port_set_suspended (struct tty_port*,int) ;
 int uart_change_pm (struct uart_state*,int ) ;
 scalar_t__ uart_console (struct uart_port*) ;

int uart_suspend_port(struct uart_driver *drv, struct uart_port *uport)
{
 struct uart_state *state = drv->state + uport->line;
 struct tty_port *port = &state->port;
 struct device *tty_dev;
 struct uart_match match = {uport, drv};

 mutex_lock(&port->mutex);

 tty_dev = device_find_child(uport->dev, &match, serial_match_port);
 if (tty_dev && device_may_wakeup(tty_dev)) {
  enable_irq_wake(uport->irq);
  put_device(tty_dev);
  mutex_unlock(&port->mutex);
  return 0;
 }
 put_device(tty_dev);


 if (!console_suspend_enabled && uart_console(uport))
  goto unlock;

 uport->suspended = 1;

 if (tty_port_initialized(port)) {
  const struct uart_ops *ops = uport->ops;
  int tries;

  tty_port_set_suspended(port, 1);
  tty_port_set_initialized(port, 0);

  spin_lock_irq(&uport->lock);
  ops->stop_tx(uport);
  ops->set_mctrl(uport, 0);
  ops->stop_rx(uport);
  spin_unlock_irq(&uport->lock);




  for (tries = 3; !ops->tx_empty(uport) && tries; tries--)
   msleep(10);
  if (!tries)
   dev_err(uport->dev, "%s: Unable to drain transmitter\n",
    uport->name);

  ops->shutdown(uport);
 }




 if (uart_console(uport))
  console_stop(uport->cons);

 uart_change_pm(state, UART_PM_STATE_OFF);
unlock:
 mutex_unlock(&port->mutex);

 return 0;
}
