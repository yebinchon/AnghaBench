
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct ktermios {int dummy; } ;



__attribute__((used)) static void tegra_tcu_uart_set_termios(struct uart_port *port,
           struct ktermios *new,
           struct ktermios *old)
{
}
