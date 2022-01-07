
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_driver {struct tty_driver* tty_driver; } ;
struct tty_driver {int dummy; } ;
struct console {int index; struct uart_driver* data; } ;



struct tty_driver *uart_console_device(struct console *co, int *index)
{
 struct uart_driver *p = co->data;
 *index = co->index;
 return p->tty_driver;
}
