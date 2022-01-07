
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct platform_device {int dev; } ;


 struct uart_port* s3c24xx_dev_to_port (int *) ;
 int s3c24xx_serial_cpufreq_deregister (int ) ;
 int s3c24xx_uart_drv ;
 int to_ourport (struct uart_port*) ;
 int uart_remove_one_port (int *,struct uart_port*) ;
 int uart_unregister_driver (int *) ;

__attribute__((used)) static int s3c24xx_serial_remove(struct platform_device *dev)
{
 struct uart_port *port = s3c24xx_dev_to_port(&dev->dev);

 if (port) {
  s3c24xx_serial_cpufreq_deregister(to_ourport(port));
  uart_remove_one_port(&s3c24xx_uart_drv, port);
 }

 uart_unregister_driver(&s3c24xx_uart_drv);

 return 0;
}
