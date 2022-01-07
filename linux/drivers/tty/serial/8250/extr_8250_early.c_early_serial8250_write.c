
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct earlycon_device {struct uart_port port; } ;
struct console {struct earlycon_device* data; } ;


 int serial_putc ;
 int uart_console_write (struct uart_port*,char const*,unsigned int,int ) ;

__attribute__((used)) static void early_serial8250_write(struct console *console,
     const char *s, unsigned int count)
{
 struct earlycon_device *device = console->data;
 struct uart_port *port = &device->port;

 uart_console_write(port, s, count, serial_putc);
}
