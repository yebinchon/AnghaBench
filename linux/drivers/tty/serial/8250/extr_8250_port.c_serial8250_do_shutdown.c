
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int flags; int iobase; int lock; int mctrl; int irq; } ;
struct uart_8250_port {TYPE_1__* ops; scalar_t__ dma; scalar_t__ ier; } ;
struct TYPE_2__ {int (* release_irq ) (struct uart_8250_port*) ;} ;


 int TIOCM_OUT1 ;
 int TIOCM_OUT2 ;
 int UART_IER ;
 int UART_LCR ;
 int UART_LCR_SBC ;
 int UART_RX ;
 int UPF_FOURPORT ;
 int disable_rsa (struct uart_8250_port*) ;
 int inb (int) ;
 int serial8250_clear_fifos (struct uart_8250_port*) ;
 int serial8250_release_dma (struct uart_8250_port*) ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 int serial8250_set_mctrl (struct uart_port*,int ) ;
 int serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_8250_port*) ;
 int synchronize_irq (int ) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

void serial8250_do_shutdown(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned long flags;

 serial8250_rpm_get(up);



 spin_lock_irqsave(&port->lock, flags);
 up->ier = 0;
 serial_port_out(port, UART_IER, 0);
 spin_unlock_irqrestore(&port->lock, flags);

 synchronize_irq(port->irq);

 if (up->dma)
  serial8250_release_dma(up);

 spin_lock_irqsave(&port->lock, flags);
 if (port->flags & UPF_FOURPORT) {

  inb((port->iobase & 0xfe0) | 0x1f);
  port->mctrl |= TIOCM_OUT1;
 } else
  port->mctrl &= ~TIOCM_OUT2;

 serial8250_set_mctrl(port, port->mctrl);
 spin_unlock_irqrestore(&port->lock, flags);




 serial_port_out(port, UART_LCR,
   serial_port_in(port, UART_LCR) & ~UART_LCR_SBC);
 serial8250_clear_fifos(up);
 serial_port_in(port, UART_RX);
 serial8250_rpm_put(up);

 up->ops->release_irq(up);
}
