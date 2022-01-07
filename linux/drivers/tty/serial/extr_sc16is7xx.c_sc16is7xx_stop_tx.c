
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SC16IS7XX_IER_THRI_BIT ;
 int sc16is7xx_ier_clear (struct uart_port*,int ) ;

__attribute__((used)) static void sc16is7xx_stop_tx(struct uart_port *port)
{
 sc16is7xx_ier_clear(port, SC16IS7XX_IER_THRI_BIT);
}
