
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct sc16is7xx_port {int kworker; } ;


 int SC16IS7XX_EFCR_REG ;
 int SC16IS7XX_EFCR_RXDISABLE_BIT ;
 int SC16IS7XX_EFCR_TXDISABLE_BIT ;
 int SC16IS7XX_IER_REG ;
 struct sc16is7xx_port* dev_get_drvdata (int ) ;
 int kthread_flush_worker (int *) ;
 int sc16is7xx_port_update (struct uart_port*,int ,int,int) ;
 int sc16is7xx_port_write (struct uart_port*,int ,int ) ;
 int sc16is7xx_power (struct uart_port*,int ) ;

__attribute__((used)) static void sc16is7xx_shutdown(struct uart_port *port)
{
 struct sc16is7xx_port *s = dev_get_drvdata(port->dev);


 sc16is7xx_port_write(port, SC16IS7XX_IER_REG, 0);

 sc16is7xx_port_update(port, SC16IS7XX_EFCR_REG,
         SC16IS7XX_EFCR_RXDISABLE_BIT |
         SC16IS7XX_EFCR_TXDISABLE_BIT,
         SC16IS7XX_EFCR_RXDISABLE_BIT |
         SC16IS7XX_EFCR_TXDISABLE_BIT);

 sc16is7xx_power(port, 0);

 kthread_flush_worker(&s->kworker);
}
