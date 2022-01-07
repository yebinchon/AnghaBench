
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct sc16is7xx_port {int kworker; } ;
struct TYPE_2__ {int flags; } ;
struct sc16is7xx_one {int reg_work; TYPE_1__ config; } ;


 int SC16IS7XX_RECONF_MD ;
 struct sc16is7xx_port* dev_get_drvdata (int ) ;
 int kthread_queue_work (int *,int *) ;
 struct sc16is7xx_one* to_sc16is7xx_one (struct uart_port*,struct uart_port*) ;

__attribute__((used)) static void sc16is7xx_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct sc16is7xx_port *s = dev_get_drvdata(port->dev);
 struct sc16is7xx_one *one = to_sc16is7xx_one(port, port);

 one->config.flags |= SC16IS7XX_RECONF_MD;
 kthread_queue_work(&s->kworker, &one->reg_work);
}
