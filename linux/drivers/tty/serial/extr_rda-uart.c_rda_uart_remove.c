
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rda_uart_port {int port; } ;
struct platform_device {size_t id; } ;


 struct rda_uart_port* platform_get_drvdata (struct platform_device*) ;
 int rda_uart_driver ;
 int ** rda_uart_ports ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int rda_uart_remove(struct platform_device *pdev)
{
 struct rda_uart_port *rda_port = platform_get_drvdata(pdev);

 uart_remove_one_port(&rda_uart_driver, &rda_port->port);
 rda_uart_ports[pdev->id] = ((void*)0);

 return 0;
}
