
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct sirfsoc_uart_port {TYPE_1__* uart_reg; } ;
struct sirfsoc_register {int sirfsoc_line_ctrl; } ;
struct TYPE_2__ {scalar_t__ uart_type; struct sirfsoc_register uart_reg; } ;


 unsigned long SIRFUART_SET_BREAK ;
 scalar_t__ SIRF_REAL_UART ;
 unsigned long rd_regl (struct uart_port*,int ) ;
 struct sirfsoc_uart_port* to_sirfport (struct uart_port*) ;
 int wr_regl (struct uart_port*,int ,unsigned long) ;

__attribute__((used)) static void sirfsoc_uart_break_ctl(struct uart_port *port, int break_state)
{
 struct sirfsoc_uart_port *sirfport = to_sirfport(port);
 struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
 if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
  unsigned long ulcon = rd_regl(port, ureg->sirfsoc_line_ctrl);
  if (break_state)
   ulcon |= SIRFUART_SET_BREAK;
  else
   ulcon &= ~SIRFUART_SET_BREAK;
  wr_regl(port, ureg->sirfsoc_line_ctrl, ulcon);
 }
}
