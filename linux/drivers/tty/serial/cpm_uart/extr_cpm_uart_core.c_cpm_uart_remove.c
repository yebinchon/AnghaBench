
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_cpm_port {int port; } ;
struct platform_device {int dummy; } ;


 int cpm_reg ;
 struct uart_cpm_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int cpm_uart_remove(struct platform_device *ofdev)
{
 struct uart_cpm_port *pinfo = platform_get_drvdata(ofdev);
 return uart_remove_one_port(&cpm_reg, &pinfo->port);
}
