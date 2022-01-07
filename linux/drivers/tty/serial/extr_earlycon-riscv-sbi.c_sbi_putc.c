
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int sbi_console_putchar (int) ;

__attribute__((used)) static void sbi_putc(struct uart_port *port, int c)
{
 sbi_console_putchar(c);
}
