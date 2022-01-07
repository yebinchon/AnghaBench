
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int capabilities; } ;


 int UART_CAP_FIFO ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static void serial8250_clear_fifos(struct uart_8250_port *p)
{
 if (p->capabilities & UART_CAP_FIFO) {
  serial_out(p, UART_FCR, UART_FCR_ENABLE_FIFO);
  serial_out(p, UART_FCR, UART_FCR_ENABLE_FIFO |
          UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
  serial_out(p, UART_FCR, 0);
 }
}
