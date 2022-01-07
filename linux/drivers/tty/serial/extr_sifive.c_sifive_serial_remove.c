
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct sifive_serial_port {int clk_notifier; int clk; TYPE_1__ port; } ;
struct platform_device {int dummy; } ;


 int __ssp_remove_console_port (struct sifive_serial_port*) ;
 int clk_notifier_unregister (int ,int *) ;
 int free_irq (int ,struct sifive_serial_port*) ;
 struct sifive_serial_port* platform_get_drvdata (struct platform_device*) ;
 int sifive_serial_uart_driver ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int sifive_serial_remove(struct platform_device *dev)
{
 struct sifive_serial_port *ssp = platform_get_drvdata(dev);

 __ssp_remove_console_port(ssp);
 uart_remove_one_port(&sifive_serial_uart_driver, &ssp->port);
 free_irq(ssp->port.irq, ssp);
 clk_notifier_unregister(ssp->clk, &ssp->clk_notifier);

 return 0;
}
