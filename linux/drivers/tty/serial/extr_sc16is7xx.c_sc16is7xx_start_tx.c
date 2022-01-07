
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct sc16is7xx_port {int kworker; } ;
struct sc16is7xx_one {int tx_work; } ;


 struct sc16is7xx_port* dev_get_drvdata (int ) ;
 int kthread_queue_work (int *,int *) ;
 struct sc16is7xx_one* to_sc16is7xx_one (struct uart_port*,struct uart_port*) ;

__attribute__((used)) static void sc16is7xx_start_tx(struct uart_port *port)
{
 struct sc16is7xx_port *s = dev_get_drvdata(port->dev);
 struct sc16is7xx_one *one = to_sc16is7xx_one(port, port);

 kthread_queue_work(&s->kworker, &one->tx_work);
}
