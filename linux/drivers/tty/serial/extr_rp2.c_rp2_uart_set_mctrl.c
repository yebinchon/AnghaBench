
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int RP2_TXRX_CTL ;
 int RP2_TXRX_CTL_DTR_m ;
 int RP2_TXRX_CTL_LOOP_m ;
 int RP2_TXRX_CTL_RTS_m ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 int port_to_up (struct uart_port*) ;
 int rp2_rmw (int ,int ,int,int) ;

__attribute__((used)) static void rp2_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 rp2_rmw(port_to_up(port), RP2_TXRX_CTL,
  RP2_TXRX_CTL_DTR_m | RP2_TXRX_CTL_RTS_m | RP2_TXRX_CTL_LOOP_m,
  ((mctrl & TIOCM_DTR) ? RP2_TXRX_CTL_DTR_m : 0) |
  ((mctrl & TIOCM_RTS) ? RP2_TXRX_CTL_RTS_m : 0) |
  ((mctrl & TIOCM_LOOP) ? RP2_TXRX_CTL_LOOP_m : 0));
}
