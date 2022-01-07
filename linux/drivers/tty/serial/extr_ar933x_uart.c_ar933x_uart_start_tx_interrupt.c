
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar933x_uart_port {int ier; } ;


 int AR933X_UART_INT_EN_REG ;
 int AR933X_UART_INT_TX_EMPTY ;
 int ar933x_uart_write (struct ar933x_uart_port*,int ,int ) ;

__attribute__((used)) static inline void ar933x_uart_start_tx_interrupt(struct ar933x_uart_port *up)
{
 up->ier |= AR933X_UART_INT_TX_EMPTY;
 ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
}
