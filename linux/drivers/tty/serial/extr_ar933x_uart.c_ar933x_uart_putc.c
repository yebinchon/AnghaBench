
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar933x_uart_port {int dummy; } ;


 int AR933X_UART_DATA_REG ;
 unsigned int AR933X_UART_DATA_TX_CSR ;
 int AR933X_UART_DATA_TX_RX_MASK ;
 int ar933x_uart_write (struct ar933x_uart_port*,int ,unsigned int) ;

__attribute__((used)) static inline void ar933x_uart_putc(struct ar933x_uart_port *up, int ch)
{
 unsigned int rdata;

 rdata = ch & AR933X_UART_DATA_TX_RX_MASK;
 rdata |= AR933X_UART_DATA_TX_CSR;
 ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);
}
