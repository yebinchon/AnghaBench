
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int OWL_UART_CTL ;
 int OWL_UART_CTL_AFE ;
 int OWL_UART_STAT ;
 int OWL_UART_STAT_CTSS ;
 int OWL_UART_STAT_RTSS ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RTS ;
 int owl_uart_read (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int owl_uart_get_mctrl(struct uart_port *port)
{
 unsigned int mctrl = TIOCM_CAR | TIOCM_DSR;
 u32 stat, ctl;

 ctl = owl_uart_read(port, OWL_UART_CTL);
 stat = owl_uart_read(port, OWL_UART_STAT);
 if (stat & OWL_UART_STAT_RTSS)
  mctrl |= TIOCM_RTS;
 if ((stat & OWL_UART_STAT_CTSS) || !(ctl & OWL_UART_CTL_AFE))
  mctrl |= TIOCM_CTS;
 return mctrl;
}
