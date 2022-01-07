
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int mctrl; int irq; } ;
struct uart_pxa_port {TYPE_1__ port; scalar_t__ ier; } ;
struct uart_port {int dummy; } ;


 int TIOCM_OUT2 ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_IER ;
 int UART_LCR ;
 int UART_LCR_SBC ;
 int free_irq (int ,struct uart_pxa_port*) ;
 int serial_in (struct uart_pxa_port*,int ) ;
 int serial_out (struct uart_pxa_port*,int ,int) ;
 int serial_pxa_set_mctrl (TYPE_1__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void serial_pxa_shutdown(struct uart_port *port)
{
 struct uart_pxa_port *up = (struct uart_pxa_port *)port;
 unsigned long flags;

 free_irq(up->port.irq, up);




 up->ier = 0;
 serial_out(up, UART_IER, 0);

 spin_lock_irqsave(&up->port.lock, flags);
 up->port.mctrl &= ~TIOCM_OUT2;
 serial_pxa_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);




 serial_out(up, UART_LCR, serial_in(up, UART_LCR) & ~UART_LCR_SBC);
 serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO |
      UART_FCR_CLEAR_RCVR |
      UART_FCR_CLEAR_XMIT);
 serial_out(up, UART_FCR, 0);
}
