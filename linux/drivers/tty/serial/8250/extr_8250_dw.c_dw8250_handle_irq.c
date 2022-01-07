
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int (* serial_in ) (struct uart_port*,int ) ;int lock; int private_data; } ;
struct uart_8250_port {int dma; } ;
struct dw8250_data {int usr_reg; } ;


 int UART_IIR ;
 unsigned int UART_IIR_BUSY ;
 unsigned int UART_IIR_RX_TIMEOUT ;
 int UART_LSR ;
 unsigned int UART_LSR_BI ;
 unsigned int UART_LSR_DR ;
 int UART_RX ;
 scalar_t__ serial8250_handle_irq (struct uart_port*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int stub1 (struct uart_port*,int ) ;
 unsigned int stub2 (struct uart_port*,int ) ;
 unsigned int stub3 (struct uart_port*,int ) ;
 unsigned int stub4 (struct uart_port*,int ) ;
 struct dw8250_data* to_dw8250_data (int ) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int dw8250_handle_irq(struct uart_port *p)
{
 struct uart_8250_port *up = up_to_u8250p(p);
 struct dw8250_data *d = to_dw8250_data(p->private_data);
 unsigned int iir = p->serial_in(p, UART_IIR);
 unsigned int status;
 unsigned long flags;
 if (!up->dma && ((iir & 0x3f) == UART_IIR_RX_TIMEOUT)) {
  spin_lock_irqsave(&p->lock, flags);
  status = p->serial_in(p, UART_LSR);

  if (!(status & (UART_LSR_DR | UART_LSR_BI)))
   (void) p->serial_in(p, UART_RX);

  spin_unlock_irqrestore(&p->lock, flags);
 }

 if (serial8250_handle_irq(p, iir))
  return 1;

 if ((iir & UART_IIR_BUSY) == UART_IIR_BUSY) {

  (void)p->serial_in(p, d->usr_reg);

  return 1;
 }

 return 0;
}
