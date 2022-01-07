
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line; } ;
struct uart_pxa_port {TYPE_1__ port; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;


 int dev_err (TYPE_2__*,char*,int) ;
 int of_alias_get_id (struct device_node*,char*) ;

__attribute__((used)) static int serial_pxa_probe_dt(struct platform_device *pdev,
          struct uart_pxa_port *sport)
{
 struct device_node *np = pdev->dev.of_node;
 int ret;

 if (!np)
  return 1;

 ret = of_alias_get_id(np, "serial");
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to get alias id, errno %d\n", ret);
  return ret;
 }
 sport->port.line = ret;
 return 0;
}
