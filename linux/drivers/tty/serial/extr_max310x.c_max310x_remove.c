
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct max310x_port {int clk; TYPE_2__* p; TYPE_1__* devtype; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int line; } ;
struct TYPE_6__ {TYPE_3__ port; int rs_work; int md_work; int tx_work; } ;
struct TYPE_5__ {int nr; int (* power ) (TYPE_3__*,int ) ;} ;


 int cancel_work_sync (int *) ;
 int clear_bit (int ,int ) ;
 int clk_disable_unprepare (int ) ;
 struct max310x_port* dev_get_drvdata (struct device*) ;
 int max310x_lines ;
 int max310x_uart ;
 int stub1 (TYPE_3__*,int ) ;
 int uart_remove_one_port (int *,TYPE_3__*) ;

__attribute__((used)) static int max310x_remove(struct device *dev)
{
 struct max310x_port *s = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < s->devtype->nr; i++) {
  cancel_work_sync(&s->p[i].tx_work);
  cancel_work_sync(&s->p[i].md_work);
  cancel_work_sync(&s->p[i].rs_work);
  uart_remove_one_port(&max310x_uart, &s->p[i].port);
  clear_bit(s->p[i].port.line, max310x_lines);
  s->devtype->power(&s->p[i].port, 0);
 }

 clk_disable_unprepare(s->clk);

 return 0;
}
