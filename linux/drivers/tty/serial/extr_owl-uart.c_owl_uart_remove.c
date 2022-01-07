
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {size_t id; } ;
struct owl_uart_port {int port; } ;


 int owl_uart_driver ;
 int ** owl_uart_ports ;
 struct owl_uart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int owl_uart_remove(struct platform_device *pdev)
{
 struct owl_uart_port *owl_port = platform_get_drvdata(pdev);

 uart_remove_one_port(&owl_uart_driver, &owl_port->port);
 owl_uart_ports[pdev->id] = ((void*)0);

 return 0;
}
