
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct platform_device {int dummy; } ;


 int linflex_reg ;
 struct uart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int linflex_remove(struct platform_device *pdev)
{
 struct uart_port *sport = platform_get_drvdata(pdev);

 uart_remove_one_port(&linflex_reg, sport);

 return 0;
}
