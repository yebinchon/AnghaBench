
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct earlycon_device {int port; } ;
struct console {struct earlycon_device* data; } ;


 int smh_putc ;
 int uart_console_write (int *,char const*,unsigned int,int ) ;

__attribute__((used)) static void smh_write(struct console *con, const char *s, unsigned n)
{
 struct earlycon_device *dev = con->data;
 uart_console_write(&dev->port, s, n, smh_putc);
}
