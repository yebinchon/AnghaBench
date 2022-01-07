
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timbuart_port {int port; int tasklet; } ;
struct platform_device {int dummy; } ;


 int kfree (struct timbuart_port*) ;
 struct timbuart_port* platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;
 int timbuart_driver ;
 int uart_remove_one_port (int *,int *) ;
 int uart_unregister_driver (int *) ;

__attribute__((used)) static int timbuart_remove(struct platform_device *dev)
{
 struct timbuart_port *uart = platform_get_drvdata(dev);

 tasklet_kill(&uart->tasklet);
 uart_remove_one_port(&timbuart_driver, &uart->port);
 uart_unregister_driver(&timbuart_driver);
 kfree(uart);

 return 0;
}
