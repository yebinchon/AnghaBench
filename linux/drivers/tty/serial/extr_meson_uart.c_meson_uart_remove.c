
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct platform_device {size_t id; } ;


 int ** meson_ports ;
 int meson_uart_driver ;
 struct uart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int meson_uart_remove(struct platform_device *pdev)
{
 struct uart_port *port;

 port = platform_get_drvdata(pdev);
 uart_remove_one_port(&meson_uart_driver, port);
 meson_ports[pdev->id] = ((void*)0);

 return 0;
}
