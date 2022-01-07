
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int dsr; int rng; } ;
struct uart_port {int lock; TYPE_3__* state; TYPE_1__ icount; } ;
struct mctrl_gpios {int mctrl_prev; struct uart_port* port; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {int delta_msr_wait; } ;
struct TYPE_6__ {TYPE_2__ port; } ;


 int IRQ_HANDLED ;
 int MCTRL_ANY_DELTA ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_RI ;
 int mctrl_gpio_get (struct mctrl_gpios*,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_handle_cts_change (struct uart_port*,int) ;
 int uart_handle_dcd_change (struct uart_port*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t mctrl_gpio_irq_handle(int irq, void *context)
{
 struct mctrl_gpios *gpios = context;
 struct uart_port *port = gpios->port;
 u32 mctrl = gpios->mctrl_prev;
 u32 mctrl_diff;
 unsigned long flags;

 mctrl_gpio_get(gpios, &mctrl);

 spin_lock_irqsave(&port->lock, flags);

 mctrl_diff = mctrl ^ gpios->mctrl_prev;
 gpios->mctrl_prev = mctrl;

 if (mctrl_diff & MCTRL_ANY_DELTA && port->state != ((void*)0)) {
  if ((mctrl_diff & mctrl) & TIOCM_RI)
   port->icount.rng++;

  if ((mctrl_diff & mctrl) & TIOCM_DSR)
   port->icount.dsr++;

  if (mctrl_diff & TIOCM_CD)
   uart_handle_dcd_change(port, mctrl & TIOCM_CD);

  if (mctrl_diff & TIOCM_CTS)
   uart_handle_cts_change(port, mctrl & TIOCM_CTS);

  wake_up_interruptible(&port->state->port.delta_msr_wait);
 }

 spin_unlock_irqrestore(&port->lock, flags);

 return IRQ_HANDLED;
}
