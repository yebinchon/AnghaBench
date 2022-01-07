
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int line; TYPE_1__* dev; } ;
struct uart_cpm_port {TYPE_2__ port; } ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENODEV ;
 int UART_NR ;
 int cpm_reg ;
 int cpm_uart_init_port (int ,struct uart_cpm_port*) ;
 struct uart_cpm_port* cpm_uart_ports ;
 int platform_set_drvdata (struct platform_device*,struct uart_cpm_port*) ;
 int probe_index ;
 int uart_add_one_port (int *,TYPE_2__*) ;

__attribute__((used)) static int cpm_uart_probe(struct platform_device *ofdev)
{
 int index = probe_index++;
 struct uart_cpm_port *pinfo = &cpm_uart_ports[index];
 int ret;

 pinfo->port.line = index;

 if (index >= UART_NR)
  return -ENODEV;

 platform_set_drvdata(ofdev, pinfo);


 pinfo->port.dev = &ofdev->dev;

 ret = cpm_uart_init_port(ofdev->dev.of_node, pinfo);
 if (ret)
  return ret;

 return uart_add_one_port(&cpm_reg, &pinfo->port);
}
