
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {int dummy; } ;


 int lqasc_console_putchar ;
 int uart_console_write (struct uart_port*,char const*,int ,int ) ;

__attribute__((used)) static void lqasc_serial_port_write(struct uart_port *port, const char *s,
        u_int count)
{
 uart_console_write(port, s, count, lqasc_console_putchar);
}
