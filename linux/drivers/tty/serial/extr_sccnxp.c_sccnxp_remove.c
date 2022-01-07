
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr; } ;
struct sccnxp_port {int regulator; TYPE_1__ uart; int * port; int timer; int irq; int poll; } ;
struct platform_device {int dev; } ;


 int IS_ERR (int ) ;
 int del_timer_sync (int *) ;
 int devm_free_irq (int *,int ,struct sccnxp_port*) ;
 struct sccnxp_port* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int uart_remove_one_port (TYPE_1__*,int *) ;
 int uart_unregister_driver (TYPE_1__*) ;

__attribute__((used)) static int sccnxp_remove(struct platform_device *pdev)
{
 int i;
 struct sccnxp_port *s = platform_get_drvdata(pdev);

 if (!s->poll)
  devm_free_irq(&pdev->dev, s->irq, s);
 else
  del_timer_sync(&s->timer);

 for (i = 0; i < s->uart.nr; i++)
  uart_remove_one_port(&s->uart, &s->port[i]);

 uart_unregister_driver(&s->uart);

 if (!IS_ERR(s->regulator))
  return regulator_disable(s->regulator);

 return 0;
}
