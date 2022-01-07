
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int OWL_UART_CTL ;
 int OWL_UART_CTL_LBEN ;
 unsigned int TIOCM_LOOP ;
 int owl_uart_read (struct uart_port*,int ) ;
 int owl_uart_write (struct uart_port*,int ,int ) ;

__attribute__((used)) static void owl_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 u32 ctl;

 ctl = owl_uart_read(port, OWL_UART_CTL);

 if (mctrl & TIOCM_LOOP)
  ctl |= OWL_UART_CTL_LBEN;
 else
  ctl &= ~OWL_UART_CTL_LBEN;

 owl_uart_write(port, ctl, OWL_UART_CTL);
}
