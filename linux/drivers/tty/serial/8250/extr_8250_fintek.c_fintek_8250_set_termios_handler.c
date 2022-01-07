
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_termios; struct fintek_8250* private_data; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct fintek_8250 {int pid; } ;




 int fintek_8250_set_termios ;

__attribute__((used)) static void fintek_8250_set_termios_handler(struct uart_8250_port *uart)
{
 struct fintek_8250 *pdata = uart->port.private_data;

 switch (pdata->pid) {
 case 129:
 case 128:
  uart->port.set_termios = fintek_8250_set_termios;
  break;

 default:
  break;
 }
}
