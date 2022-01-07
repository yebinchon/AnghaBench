
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct platform_device {int dummy; } ;
struct pic32_sport {size_t idx; } ;


 int pic32_disable_clock (struct pic32_sport*) ;
 int ** pic32_sports ;
 int pic32_uart_driver ;
 struct uart_port* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int pic32_uart_remove(struct platform_device *pdev)
{
 struct uart_port *port = platform_get_drvdata(pdev);
 struct pic32_sport *sport = to_pic32_sport(port);

 uart_remove_one_port(&pic32_uart_driver, port);
 pic32_disable_clock(sport);
 platform_set_drvdata(pdev, ((void*)0));
 pic32_sports[sport->idx] = ((void*)0);


 return 0;
}
