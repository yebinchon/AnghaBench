
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int siu_write (struct uart_port*,int ,int) ;

__attribute__((used)) static inline void siu_clear_fifo(struct uart_port *port)
{
 siu_write(port, UART_FCR, UART_FCR_ENABLE_FIFO);
 siu_write(port, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR |
                           UART_FCR_CLEAR_XMIT);
 siu_write(port, UART_FCR, 0);
}
