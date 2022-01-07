
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_port {int mctrl; scalar_t__ break_ctl; } ;


 int OOB_RX_THROTTLE ;
 unsigned int OOB_TX_THROTTLE ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int UART_LSR_BI ;

__attribute__((used)) static unsigned int __fwtty_port_line_status(struct fwtty_port *port)
{
 unsigned int status = 0;



 if (port->mctrl & TIOCM_DTR)
  status |= TIOCM_DSR | TIOCM_CAR;
 if (port->mctrl & TIOCM_RTS)
  status |= TIOCM_CTS;
 if (port->mctrl & OOB_RX_THROTTLE)
  status |= OOB_TX_THROTTLE;

 if (port->break_ctl)
  status |= UART_LSR_BI << 24;

 return status;
}
