
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct platform_device {int dummy; } ;


 int asc_uart_driver ;
 struct uart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int asc_serial_remove(struct platform_device *pdev)
{
 struct uart_port *port = platform_get_drvdata(pdev);

 return uart_remove_one_port(&asc_uart_driver, port);
}
