
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int UART_PM_STATE_ON ;
 int sc16is7xx_power (struct uart_port*,int) ;

__attribute__((used)) static void sc16is7xx_pm(struct uart_port *port, unsigned int state,
    unsigned int oldstate)
{
 sc16is7xx_power(port, (state == UART_PM_STATE_ON) ? 1 : 0);
}
