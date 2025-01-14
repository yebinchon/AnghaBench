
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SC16IS7XX_LSR_REG ;
 unsigned int SC16IS7XX_LSR_TEMT_BIT ;
 unsigned int TIOCSER_TEMT ;
 unsigned int sc16is7xx_port_read (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int sc16is7xx_tx_empty(struct uart_port *port)
{
 unsigned int lsr;

 lsr = sc16is7xx_port_read(port, SC16IS7XX_LSR_REG);

 return (lsr & SC16IS7XX_LSR_TEMT_BIT) ? TIOCSER_TEMT : 0;
}
