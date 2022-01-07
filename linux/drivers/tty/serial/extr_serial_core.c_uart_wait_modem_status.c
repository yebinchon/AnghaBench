
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int delta_msr_wait; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int lock; int icount; } ;
struct uart_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; scalar_t__ cts; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EIO ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 unsigned long TIOCM_CD ;
 unsigned long TIOCM_CTS ;
 unsigned long TIOCM_DSR ;
 unsigned long TIOCM_RNG ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int memcpy (struct uart_icount*,int *,int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int uart_enable_ms (struct uart_port*) ;
 int uart_port_deref (struct uart_port*) ;
 struct uart_port* uart_port_ref (struct uart_state*) ;
 int wait ;

__attribute__((used)) static int uart_wait_modem_status(struct uart_state *state, unsigned long arg)
{
 struct uart_port *uport;
 struct tty_port *port = &state->port;
 DECLARE_WAITQUEUE(wait, current);
 struct uart_icount cprev, cnow;
 int ret;




 uport = uart_port_ref(state);
 if (!uport)
  return -EIO;
 spin_lock_irq(&uport->lock);
 memcpy(&cprev, &uport->icount, sizeof(struct uart_icount));
 uart_enable_ms(uport);
 spin_unlock_irq(&uport->lock);

 add_wait_queue(&port->delta_msr_wait, &wait);
 for (;;) {
  spin_lock_irq(&uport->lock);
  memcpy(&cnow, &uport->icount, sizeof(struct uart_icount));
  spin_unlock_irq(&uport->lock);

  set_current_state(TASK_INTERRUPTIBLE);

  if (((arg & TIOCM_RNG) && (cnow.rng != cprev.rng)) ||
      ((arg & TIOCM_DSR) && (cnow.dsr != cprev.dsr)) ||
      ((arg & TIOCM_CD) && (cnow.dcd != cprev.dcd)) ||
      ((arg & TIOCM_CTS) && (cnow.cts != cprev.cts))) {
   ret = 0;
   break;
  }

  schedule();


  if (signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }

  cprev = cnow;
 }
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(&port->delta_msr_wait, &wait);
 uart_port_deref(uport);

 return ret;
}
