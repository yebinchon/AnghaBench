
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int membase; int dev; } ;
struct TYPE_2__ {int base; } ;
struct qcom_geni_serial_port {TYPE_1__ se; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 struct qcom_geni_serial_port* to_dev_port (struct uart_port*,struct uart_port*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int qcom_geni_serial_request_port(struct uart_port *uport)
{
 struct platform_device *pdev = to_platform_device(uport->dev);
 struct qcom_geni_serial_port *port = to_dev_port(uport, uport);

 uport->membase = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(uport->membase))
  return PTR_ERR(uport->membase);
 port->se.base = uport->membase;
 return 0;
}
