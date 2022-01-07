
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_rs485 {scalar_t__ delay_rts_after_send; scalar_t__ delay_rts_before_send; scalar_t__ flags; } ;
struct uart_port {struct serial_rs485 rs485; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENODEV ;
 int uart_get_rs485_mode (TYPE_1__*,struct serial_rs485*) ;

__attribute__((used)) static int stm32_init_rs485(struct uart_port *port,
       struct platform_device *pdev)
{
 struct serial_rs485 *rs485conf = &port->rs485;

 rs485conf->flags = 0;
 rs485conf->delay_rts_before_send = 0;
 rs485conf->delay_rts_after_send = 0;

 if (!pdev->dev.of_node)
  return -ENODEV;

 uart_get_rs485_mode(&pdev->dev, rs485conf);

 return 0;
}
