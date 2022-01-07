
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 int PORT_16450 ;
 int PORT_8250 ;
 int UART_SCR ;
 unsigned char serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,unsigned char) ;

__attribute__((used)) static void autoconfig_8250(struct uart_8250_port *up)
{
 unsigned char scratch, status1, status2;

 up->port.type = PORT_8250;

 scratch = serial_in(up, UART_SCR);
 serial_out(up, UART_SCR, 0xa5);
 status1 = serial_in(up, UART_SCR);
 serial_out(up, UART_SCR, 0x5a);
 status2 = serial_in(up, UART_SCR);
 serial_out(up, UART_SCR, scratch);

 if (status1 == 0xa5 && status2 == 0x5a)
  up->port.type = PORT_16450;
}
