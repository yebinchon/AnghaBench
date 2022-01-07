
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int membase; scalar_t__ mapbase; } ;
struct platform_device {int dummy; } ;


 int altera_uart_driver ;
 int iounmap (int ) ;
 struct uart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int altera_uart_remove(struct platform_device *pdev)
{
 struct uart_port *port = platform_get_drvdata(pdev);

 if (port) {
  uart_remove_one_port(&altera_uart_driver, port);
  port->mapbase = 0;
  iounmap(port->membase);
 }

 return 0;
}
