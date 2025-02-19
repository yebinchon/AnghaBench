
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_omap_port {int dummy; } ;


 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int serial_out (struct uart_omap_port*,int ,int) ;

__attribute__((used)) static inline void serial_omap_clear_fifos(struct uart_omap_port *up)
{
 serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO);
 serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO |
         UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
 serial_out(up, UART_FCR, 0);
}
