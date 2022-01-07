
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int membase; } ;


 int LPC32XX_HSUART_LEVEL (int ) ;
 scalar_t__ LPC32XX_HSU_TX_LEV (int ) ;
 unsigned int TIOCSER_TEMT ;
 int readl (int ) ;

__attribute__((used)) static unsigned int serial_lpc32xx_tx_empty(struct uart_port *port)
{
 unsigned int ret = 0;

 if (LPC32XX_HSU_TX_LEV(readl(LPC32XX_HSUART_LEVEL(port->membase))) == 0)
  ret = TIOCSER_TEMT;

 return ret;
}
