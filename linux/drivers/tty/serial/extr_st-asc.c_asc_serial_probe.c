
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct asc_port {int port; } ;


 int ENODEV ;
 int asc_init_port (struct asc_port*,struct platform_device*) ;
 struct asc_port* asc_of_get_asc_port (struct platform_device*) ;
 int asc_uart_driver ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int uart_add_one_port (int *,int *) ;

__attribute__((used)) static int asc_serial_probe(struct platform_device *pdev)
{
 int ret;
 struct asc_port *ascport;

 ascport = asc_of_get_asc_port(pdev);
 if (!ascport)
  return -ENODEV;

 ret = asc_init_port(ascport, pdev);
 if (ret)
  return ret;

 ret = uart_add_one_port(&asc_uart_driver, &ascport->port);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, &ascport->port);

 return 0;
}
