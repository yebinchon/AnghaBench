
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int mutex; struct tty_struct* tty; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int line; int lock; int mctrl; struct uart_ops* ops; TYPE_1__* cons; scalar_t__ suspended; int irq; int dev; } ;
struct uart_ops {int (* startup ) (struct uart_port*) ;int (* start_tx ) (struct uart_port*) ;int (* set_mctrl ) (struct uart_port*,int ) ;int (* set_termios ) (struct uart_port*,struct ktermios*,int *) ;} ;
struct uart_match {struct uart_driver* member_1; struct uart_port* member_0; } ;
struct uart_driver {struct uart_state* state; } ;
struct ktermios {scalar_t__ c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ cflag; } ;


 int UART_PM_STATE_ON ;
 int console_start (TYPE_1__*) ;
 scalar_t__ console_suspend_enabled ;
 struct device* device_find_child (int ,struct uart_match*,int ) ;
 scalar_t__ device_may_wakeup (struct device*) ;
 int disable_irq_wake (int ) ;
 int irq_get_irq_data (int ) ;
 scalar_t__ irqd_is_wakeup_set (int ) ;
 int memset (struct ktermios*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;
 int serial_match_port ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct uart_port*,struct ktermios*,int *) ;
 int stub2 (struct uart_port*,int ) ;
 int stub3 (struct uart_port*) ;
 int stub4 (struct uart_port*,int ) ;
 int stub5 (struct uart_port*) ;
 int tty_port_set_initialized (struct tty_port*,int) ;
 int tty_port_set_suspended (struct tty_port*,int ) ;
 scalar_t__ tty_port_suspended (struct tty_port*) ;
 int uart_change_pm (struct uart_state*,int ) ;
 int uart_change_speed (struct tty_struct*,struct uart_state*,int *) ;
 scalar_t__ uart_console (struct uart_port*) ;
 int uart_shutdown (struct tty_struct*,struct uart_state*) ;

int uart_resume_port(struct uart_driver *drv, struct uart_port *uport)
{
 struct uart_state *state = drv->state + uport->line;
 struct tty_port *port = &state->port;
 struct device *tty_dev;
 struct uart_match match = {uport, drv};
 struct ktermios termios;

 mutex_lock(&port->mutex);

 tty_dev = device_find_child(uport->dev, &match, serial_match_port);
 if (!uport->suspended && device_may_wakeup(tty_dev)) {
  if (irqd_is_wakeup_set(irq_get_irq_data((uport->irq))))
   disable_irq_wake(uport->irq);
  put_device(tty_dev);
  mutex_unlock(&port->mutex);
  return 0;
 }
 put_device(tty_dev);
 uport->suspended = 0;




 if (uart_console(uport)) {



  memset(&termios, 0, sizeof(struct ktermios));
  termios.c_cflag = uport->cons->cflag;




  if (port->tty && termios.c_cflag == 0)
   termios = port->tty->termios;

  if (console_suspend_enabled)
   uart_change_pm(state, UART_PM_STATE_ON);
  uport->ops->set_termios(uport, &termios, ((void*)0));
  if (console_suspend_enabled)
   console_start(uport->cons);
 }

 if (tty_port_suspended(port)) {
  const struct uart_ops *ops = uport->ops;
  int ret;

  uart_change_pm(state, UART_PM_STATE_ON);
  spin_lock_irq(&uport->lock);
  ops->set_mctrl(uport, 0);
  spin_unlock_irq(&uport->lock);
  if (console_suspend_enabled || !uart_console(uport)) {

   struct tty_struct *tty = port->tty;
   ret = ops->startup(uport);
   if (ret == 0) {
    if (tty)
     uart_change_speed(tty, state, ((void*)0));
    spin_lock_irq(&uport->lock);
    ops->set_mctrl(uport, uport->mctrl);
    ops->start_tx(uport);
    spin_unlock_irq(&uport->lock);
    tty_port_set_initialized(port, 1);
   } else {





    uart_shutdown(tty, state);
   }
  }

  tty_port_set_suspended(port, 0);
 }

 mutex_unlock(&port->mutex);

 return 0;
}
