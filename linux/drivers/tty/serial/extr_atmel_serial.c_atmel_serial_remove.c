
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int line; } ;
struct TYPE_4__ {int * of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int buf; } ;
struct atmel_uart_port {int * clk; TYPE_1__ rx_ring; int tasklet_tx; int tasklet_rx; } ;


 int atmel_ports_in_use ;
 int atmel_uart ;
 int clear_bit (int ,int ) ;
 int clk_put (int *) ;
 int device_init_wakeup (TYPE_2__*,int ) ;
 int kfree (int ) ;
 struct uart_port* platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int atmel_serial_remove(struct platform_device *pdev)
{
 struct uart_port *port = platform_get_drvdata(pdev);
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 int ret = 0;

 tasklet_kill(&atmel_port->tasklet_rx);
 tasklet_kill(&atmel_port->tasklet_tx);

 device_init_wakeup(&pdev->dev, 0);

 ret = uart_remove_one_port(&atmel_uart, port);

 kfree(atmel_port->rx_ring.buf);



 clear_bit(port->line, atmel_ports_in_use);

 clk_put(atmel_port->clk);
 atmel_port->clk = ((void*)0);
 pdev->dev.of_node = ((void*)0);

 return ret;
}
