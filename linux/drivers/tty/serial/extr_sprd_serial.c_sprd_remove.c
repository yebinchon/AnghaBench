
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t line; } ;
struct sprd_uart_port {TYPE_1__ port; } ;
struct platform_device {int dummy; } ;


 struct sprd_uart_port* platform_get_drvdata (struct platform_device*) ;
 int ** sprd_port ;
 int sprd_ports_num ;
 int sprd_rx_free_buf (struct sprd_uart_port*) ;
 int sprd_uart_driver ;
 int uart_remove_one_port (int *,TYPE_1__*) ;
 int uart_unregister_driver (int *) ;

__attribute__((used)) static int sprd_remove(struct platform_device *dev)
{
 struct sprd_uart_port *sup = platform_get_drvdata(dev);

 if (sup) {
  uart_remove_one_port(&sprd_uart_driver, &sup->port);
  sprd_port[sup->port.line] = ((void*)0);
  sprd_ports_num--;
 }

 if (!sprd_ports_num)
  uart_unregister_driver(&sprd_uart_driver);

 sprd_rx_free_buf(sup);

 return 0;
}
