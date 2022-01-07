
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SC16IS7XX_IER_REG ;
 int SC16IS7XX_IER_SLEEP_BIT ;
 int sc16is7xx_port_update (struct uart_port*,int ,int ,int ) ;

__attribute__((used)) static void sc16is7xx_power(struct uart_port *port, int on)
{
 sc16is7xx_port_update(port, SC16IS7XX_IER_REG,
         SC16IS7XX_IER_SLEEP_BIT,
         on ? 0 : SC16IS7XX_IER_SLEEP_BIT);
}
