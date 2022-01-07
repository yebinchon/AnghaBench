
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_driver {int dummy; } ;
struct TYPE_2__ {struct uart_driver* private_data; } ;
struct qcom_geni_serial_port {TYPE_1__ uport; } ;
struct platform_device {int dummy; } ;


 struct qcom_geni_serial_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (struct uart_driver*,TYPE_1__*) ;

__attribute__((used)) static int qcom_geni_serial_remove(struct platform_device *pdev)
{
 struct qcom_geni_serial_port *port = platform_get_drvdata(pdev);
 struct uart_driver *drv = port->uport.private_data;

 uart_remove_one_port(drv, &port->uport);
 return 0;
}
