
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SC16IS7XX_LCR_REG ;
 int SC16IS7XX_LCR_TXBREAK_BIT ;
 int sc16is7xx_port_update (struct uart_port*,int ,int ,int ) ;

__attribute__((used)) static void sc16is7xx_break_ctl(struct uart_port *port, int break_state)
{
 sc16is7xx_port_update(port, SC16IS7XX_LCR_REG,
         SC16IS7XX_LCR_TXBREAK_BIT,
         break_state ? SC16IS7XX_LCR_TXBREAK_BIT : 0);
}
