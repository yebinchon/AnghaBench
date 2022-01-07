
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_amba_port {int im; } ;


 int REG_IMSC ;
 int UART011_TXIM ;
 scalar_t__ pl011_tx_chars (struct uart_amba_port*,int) ;
 int pl011_write (int ,struct uart_amba_port*,int ) ;

__attribute__((used)) static void pl011_start_tx_pio(struct uart_amba_port *uap)
{
 if (pl011_tx_chars(uap, 0)) {
  uap->im |= UART011_TXIM;
  pl011_write(uap->im, uap, REG_IMSC);
 }
}
