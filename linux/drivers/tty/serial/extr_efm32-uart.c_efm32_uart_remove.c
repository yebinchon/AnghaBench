
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {unsigned int line; } ;
struct efm32_uart_port {TYPE_1__ port; } ;


 unsigned int ARRAY_SIZE (int **) ;
 int ** efm32_uart_ports ;
 int efm32_uart_reg ;
 int kfree (struct efm32_uart_port*) ;
 struct efm32_uart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int efm32_uart_remove(struct platform_device *pdev)
{
 struct efm32_uart_port *efm_port = platform_get_drvdata(pdev);
 unsigned int line = efm_port->port.line;

 uart_remove_one_port(&efm32_uart_reg, &efm_port->port);

 if (line >= 0 && line < ARRAY_SIZE(efm32_uart_ports))
  efm32_uart_ports[line] = ((void*)0);

 kfree(efm_port);

 return 0;
}
