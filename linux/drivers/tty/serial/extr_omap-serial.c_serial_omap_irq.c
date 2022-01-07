
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* state; int lock; } ;
struct uart_omap_port {int port_activity; int dev; TYPE_2__ port; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int port; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UART_IIR ;


 unsigned int UART_IIR_NO_INT ;





 int UART_LSR ;
 int check_modem_status (struct uart_omap_port*) ;
 int jiffies ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 unsigned int serial_in (struct uart_omap_port*,int ) ;
 int serial_omap_rdi (struct uart_omap_port*,unsigned int) ;
 int serial_omap_rlsi (struct uart_omap_port*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int transmit_chars (struct uart_omap_port*,unsigned int) ;
 int tty_flip_buffer_push (int *) ;

__attribute__((used)) static irqreturn_t serial_omap_irq(int irq, void *dev_id)
{
 struct uart_omap_port *up = dev_id;
 unsigned int iir, lsr;
 unsigned int type;
 irqreturn_t ret = IRQ_NONE;
 int max_count = 256;

 spin_lock(&up->port.lock);
 pm_runtime_get_sync(up->dev);

 do {
  iir = serial_in(up, UART_IIR);
  if (iir & UART_IIR_NO_INT)
   break;

  ret = IRQ_HANDLED;
  lsr = serial_in(up, UART_LSR);


  type = iir & 0x3e;

  switch (type) {
  case 133:
   check_modem_status(up);
   break;
  case 129:
   transmit_chars(up, lsr);
   break;
  case 130:

  case 132:
   serial_omap_rdi(up, lsr);
   break;
  case 131:
   serial_omap_rlsi(up, lsr);
   break;
  case 134:

   break;
  case 128:

  default:
   break;
  }
 } while (max_count--);

 spin_unlock(&up->port.lock);

 tty_flip_buffer_push(&up->port.state->port);

 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
 up->port_activity = jiffies;

 return ret;
}
