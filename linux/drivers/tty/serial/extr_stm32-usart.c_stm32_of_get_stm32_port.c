
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line; } ;
struct stm32_port {int last_res; scalar_t__ cr3_irq; int cr1_irq; TYPE_1__ port; int hw_flow_control; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;


 int RX_BUF_L ;
 int STM32_MAX_PORTS ;
 int USART_CR1_RXNEIE ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int of_alias_get_id (struct device_node*,char*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 struct stm32_port* stm32_ports ;

__attribute__((used)) static struct stm32_port *stm32_of_get_stm32_port(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 int id;

 if (!np)
  return ((void*)0);

 id = of_alias_get_id(np, "serial");
 if (id < 0) {
  dev_err(&pdev->dev, "failed to get alias id, errno %d\n", id);
  return ((void*)0);
 }

 if (WARN_ON(id >= STM32_MAX_PORTS))
  return ((void*)0);

 stm32_ports[id].hw_flow_control = of_property_read_bool(np,
       "st,hw-flow-ctrl");
 stm32_ports[id].port.line = id;
 stm32_ports[id].cr1_irq = USART_CR1_RXNEIE;
 stm32_ports[id].cr3_irq = 0;
 stm32_ports[id].last_res = RX_BUF_L;
 return &stm32_ports[id];
}
