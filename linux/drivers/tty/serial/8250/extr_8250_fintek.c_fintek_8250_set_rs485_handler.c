
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rs485_config; struct fintek_8250* private_data; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct fintek_8250 {int pid; } ;






 int fintek_8250_rs485_config ;

__attribute__((used)) static void fintek_8250_set_rs485_handler(struct uart_8250_port *uart)
{
 struct fintek_8250 *pdata = uart->port.private_data;

 switch (pdata->pid) {
 case 131:
 case 130:
 case 128:
 case 129:
  uart->port.rs485_config = fintek_8250_rs485_config;
  break;

 default:
  break;
 }
}
