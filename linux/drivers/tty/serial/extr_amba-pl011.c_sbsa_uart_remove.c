
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_amba_port {int port; } ;
struct platform_device {int dummy; } ;


 int amba_reg ;
 int pl011_unregister_port (struct uart_amba_port*) ;
 struct uart_amba_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int sbsa_uart_remove(struct platform_device *pdev)
{
 struct uart_amba_port *uap = platform_get_drvdata(pdev);

 uart_remove_one_port(&amba_reg, &uap->port);
 pl011_unregister_port(uap);
 return 0;
}
