
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_EXAR_SLEEP ;
 int serial_port_out (struct uart_port*,int ,int) ;

__attribute__((used)) static void exar_pm(struct uart_port *port, unsigned int state, unsigned int old)
{






 serial_port_out(port, UART_EXAR_SLEEP, state ? 0xff : 0);
}
