
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int ier; } ;


 int UART_IER ;
 int UART_IER_THRI ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static inline bool serial8250_set_THRI(struct uart_8250_port *up)
{
 if (up->ier & UART_IER_THRI)
  return 0;
 up->ier |= UART_IER_THRI;
 serial_out(up, UART_IER, up->ier);
 return 1;
}
