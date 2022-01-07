
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int line; } ;
struct mps2_uart_port {TYPE_1__ port; int flags; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int MPS2_MAX_PORTS ;
 int UART_PORT_COMBINED_IRQ ;
 int idr_alloc (int *,void*,int,int ,int ) ;
 int idr_alloc_cyclic (int *,void*,int ,int ,int ) ;
 int of_alias_get_id (struct device_node*,char*) ;
 int platform_irq_count (struct platform_device*) ;
 int ports_idr ;

__attribute__((used)) static int mps2_of_get_port(struct platform_device *pdev,
       struct mps2_uart_port *mps_port)
{
 struct device_node *np = pdev->dev.of_node;
 int id;

 if (!np)
  return -ENODEV;

 id = of_alias_get_id(np, "serial");

 if (id < 0)
  id = idr_alloc_cyclic(&ports_idr, (void *)mps_port, 0, MPS2_MAX_PORTS, GFP_KERNEL);
 else
  id = idr_alloc(&ports_idr, (void *)mps_port, id, MPS2_MAX_PORTS, GFP_KERNEL);

 if (id < 0)
  return id;


 if (platform_irq_count(pdev) == 1)
  mps_port->flags |= UART_PORT_COMBINED_IRQ;

 mps_port->port.line = id;

 return 0;
}
