
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct pic32_sport {int hw_flow_ctrl; } ;


 unsigned int TIOCM_CD ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 scalar_t__ get_cts_state (struct pic32_sport*) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;

__attribute__((used)) static unsigned int pic32_uart_get_mctrl(struct uart_port *port)
{
 struct pic32_sport *sport = to_pic32_sport(port);
 unsigned int mctrl = 0;

 if (!sport->hw_flow_ctrl)
  mctrl |= TIOCM_CTS;
 else if (get_cts_state(sport))
  mctrl |= TIOCM_CTS;




 mctrl |= TIOCM_CD;
 mctrl |= TIOCM_DSR;

 return mctrl;
}
