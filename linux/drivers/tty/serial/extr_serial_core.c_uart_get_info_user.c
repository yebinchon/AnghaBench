
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct uart_state {struct tty_port port; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct serial_struct {int dummy; } ;


 int EIO ;
 scalar_t__ uart_get_info (struct tty_port*,struct serial_struct*) ;

__attribute__((used)) static int uart_get_info_user(struct tty_struct *tty,
    struct serial_struct *ss)
{
 struct uart_state *state = tty->driver_data;
 struct tty_port *port = &state->port;

 return uart_get_info(port, ss) < 0 ? -EIO : 0;
}
