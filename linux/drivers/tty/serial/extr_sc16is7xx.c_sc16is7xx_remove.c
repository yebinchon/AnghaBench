
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sc16is7xx_port {int clk; int kworker_task; int kworker; TYPE_2__* p; TYPE_1__* devtype; int gpio; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int line; } ;
struct TYPE_6__ {TYPE_3__ port; } ;
struct TYPE_5__ {int nr_uart; scalar_t__ nr_gpio; } ;


 int IS_ERR (int ) ;
 int clear_bit (int ,int *) ;
 int clk_disable_unprepare (int ) ;
 struct sc16is7xx_port* dev_get_drvdata (struct device*) ;
 int gpiochip_remove (int *) ;
 int kthread_flush_worker (int *) ;
 int kthread_stop (int ) ;
 int sc16is7xx_lines ;
 int sc16is7xx_power (TYPE_3__*,int ) ;
 int sc16is7xx_uart ;
 int uart_remove_one_port (int *,TYPE_3__*) ;

__attribute__((used)) static int sc16is7xx_remove(struct device *dev)
{
 struct sc16is7xx_port *s = dev_get_drvdata(dev);
 int i;






 for (i = 0; i < s->devtype->nr_uart; i++) {
  uart_remove_one_port(&sc16is7xx_uart, &s->p[i].port);
  clear_bit(s->p[i].port.line, &sc16is7xx_lines);
  sc16is7xx_power(&s->p[i].port, 0);
 }

 kthread_flush_worker(&s->kworker);
 kthread_stop(s->kworker_task);

 if (!IS_ERR(s->clk))
  clk_disable_unprepare(s->clk);

 return 0;
}
