
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ rs485; } ;
struct uart_8250_port {TYPE_2__ port; } ;


 int SER_RS485_RTS_AFTER_SEND ;
 unsigned char UART_MCR_RTS ;
 unsigned char serial8250_in_MCR (struct uart_8250_port*) ;
 int serial8250_out_MCR (struct uart_8250_port*,unsigned char) ;

__attribute__((used)) static inline void serial8250_em485_rts_after_send(struct uart_8250_port *p)
{
 unsigned char mcr = serial8250_in_MCR(p);

 if (p->port.rs485.flags & SER_RS485_RTS_AFTER_SEND)
  mcr |= UART_MCR_RTS;
 else
  mcr &= ~UART_MCR_RTS;
 serial8250_out_MCR(p, mcr);
}
