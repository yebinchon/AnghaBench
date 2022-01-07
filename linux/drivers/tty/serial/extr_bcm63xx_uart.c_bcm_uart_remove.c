
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct platform_device {size_t id; } ;
struct TYPE_2__ {int * membase; } ;


 int bcm_uart_driver ;
 struct uart_port* platform_get_drvdata (struct platform_device*) ;
 TYPE_1__* ports ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int bcm_uart_remove(struct platform_device *pdev)
{
 struct uart_port *port;

 port = platform_get_drvdata(pdev);
 uart_remove_one_port(&bcm_uart_driver, port);

 ports[pdev->id].membase = ((void*)0);
 return 0;
}
