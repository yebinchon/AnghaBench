
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ delay_rts_before_send; } ;
struct TYPE_4__ {TYPE_1__ rs485; } ;
struct uart_8250_port {TYPE_2__ port; struct uart_8250_em485* em485; } ;
struct uart_8250_em485 {int start_tx_timer; int * active_timer; } ;


 int SER_RS485_RTS_ON_SEND ;
 int SER_RS485_RX_DURING_TX ;
 unsigned char UART_MCR_RTS ;
 int __start_tx (struct uart_port*) ;
 unsigned char serial8250_in_MCR (struct uart_8250_port*) ;
 int serial8250_out_MCR (struct uart_8250_port*,unsigned char) ;
 int serial8250_stop_rx (TYPE_2__*) ;
 int start_hrtimer_ms (int *,scalar_t__) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static inline void start_tx_rs485(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 struct uart_8250_em485 *em485 = up->em485;
 unsigned char mcr;

 if (!(up->port.rs485.flags & SER_RS485_RX_DURING_TX))
  serial8250_stop_rx(&up->port);

 em485->active_timer = ((void*)0);

 mcr = serial8250_in_MCR(up);
 if (!!(up->port.rs485.flags & SER_RS485_RTS_ON_SEND) !=
     !!(mcr & UART_MCR_RTS)) {
  if (up->port.rs485.flags & SER_RS485_RTS_ON_SEND)
   mcr |= UART_MCR_RTS;
  else
   mcr &= ~UART_MCR_RTS;
  serial8250_out_MCR(up, mcr);

  if (up->port.rs485.delay_rts_before_send > 0) {
   em485->active_timer = &em485->start_tx_timer;
   start_hrtimer_ms(&em485->start_tx_timer,
      up->port.rs485.delay_rts_before_send);
   return;
  }
 }

 __start_tx(port);
}
