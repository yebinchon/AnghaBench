
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; } ;
struct ktermios {scalar_t__ c_line; } ;


 scalar_t__ N_PPS ;
 int UPF_HARDPPS_CD ;
 int mxs_auart_enable_ms (struct uart_port*) ;

__attribute__((used)) static void mxs_auart_set_ldisc(struct uart_port *port,
    struct ktermios *termios)
{
 if (termios->c_line == N_PPS) {
  port->flags |= UPF_HARDPPS_CD;
  mxs_auart_enable_ms(port);
 } else {
  port->flags &= ~UPF_HARDPPS_CD;
 }
}
