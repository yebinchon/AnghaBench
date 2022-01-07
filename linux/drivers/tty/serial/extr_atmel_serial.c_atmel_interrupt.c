
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct atmel_uart_port {unsigned int pending; unsigned int pending_status; int lock_suspended; scalar_t__ suspended; } ;
typedef int irqreturn_t ;


 int ATMEL_ISR_PASS_LIMIT ;
 int ATMEL_US_CSR ;
 int ATMEL_US_IDR ;
 int ATMEL_US_IMR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int atmel_handle_receive (struct uart_port*,unsigned int) ;
 int atmel_handle_status (struct uart_port*,unsigned int,unsigned int) ;
 int atmel_handle_transmit (struct uart_port*,unsigned int) ;
 unsigned int atmel_uart_readl (struct uart_port*,int ) ;
 int atmel_uart_writel (struct uart_port*,int ,unsigned int) ;
 int pm_system_wakeup () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static irqreturn_t atmel_interrupt(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 unsigned int status, pending, mask, pass_counter = 0;

 spin_lock(&atmel_port->lock_suspended);

 do {
  status = atmel_uart_readl(port, ATMEL_US_CSR);
  mask = atmel_uart_readl(port, ATMEL_US_IMR);
  pending = status & mask;
  if (!pending)
   break;

  if (atmel_port->suspended) {
   atmel_port->pending |= pending;
   atmel_port->pending_status = status;
   atmel_uart_writel(port, ATMEL_US_IDR, mask);
   pm_system_wakeup();
   break;
  }

  atmel_handle_receive(port, pending);
  atmel_handle_status(port, pending, status);
  atmel_handle_transmit(port, pending);
 } while (pass_counter++ < ATMEL_ISR_PASS_LIMIT);

 spin_unlock(&atmel_port->lock_suspended);

 return pass_counter ? IRQ_HANDLED : IRQ_NONE;
}
