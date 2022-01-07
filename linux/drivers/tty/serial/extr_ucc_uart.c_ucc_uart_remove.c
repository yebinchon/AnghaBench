
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;
struct uart_qe_port {TYPE_1__ port; } ;
struct platform_device {int dev; } ;


 int dev_info (int *,char*,int ) ;
 int kfree (struct uart_qe_port*) ;
 struct uart_qe_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,TYPE_1__*) ;
 int ucc_uart_driver ;

__attribute__((used)) static int ucc_uart_remove(struct platform_device *ofdev)
{
 struct uart_qe_port *qe_port = platform_get_drvdata(ofdev);

 dev_info(&ofdev->dev, "removing /dev/ttyQE%u\n", qe_port->port.line);

 uart_remove_one_port(&ucc_uart_driver, &qe_port->port);

 kfree(qe_port);

 return 0;
}
