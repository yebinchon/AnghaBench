
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_pxa_port {TYPE_1__ port; int lcr; } ;
struct uart_port {int dummy; } ;


 int UART_LCR ;
 int UART_LCR_SBC ;
 int serial_out (struct uart_pxa_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void serial_pxa_break_ctl(struct uart_port *port, int break_state)
{
 struct uart_pxa_port *up = (struct uart_pxa_port *)port;
 unsigned long flags;

 spin_lock_irqsave(&up->port.lock, flags);
 if (break_state == -1)
  up->lcr |= UART_LCR_SBC;
 else
  up->lcr &= ~UART_LCR_SBC;
 serial_out(up, UART_LCR, up->lcr);
 spin_unlock_irqrestore(&up->port.lock, flags);
}
