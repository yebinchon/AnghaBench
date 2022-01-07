
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct sirfsoc_uart_port {int cts_gpio; TYPE_1__* uart_reg; int ms_enabled; int hw_flow_ctrl; } ;
struct sirfsoc_register {int sirfsoc_afc_ctrl; } ;
struct TYPE_2__ {scalar_t__ uart_type; struct sirfsoc_register uart_reg; } ;


 int SIRFUART_AFC_CTS_STATUS ;
 scalar_t__ SIRF_REAL_UART ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 int gpio_get_value (int ) ;
 int rd_regl (struct uart_port*,int ) ;
 struct sirfsoc_uart_port* to_sirfport (struct uart_port*) ;

__attribute__((used)) static unsigned int sirfsoc_uart_get_mctrl(struct uart_port *port)
{
 struct sirfsoc_uart_port *sirfport = to_sirfport(port);
 struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
 if (!sirfport->hw_flow_ctrl || !sirfport->ms_enabled)
  goto cts_asserted;
 if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
  if (!(rd_regl(port, ureg->sirfsoc_afc_ctrl) &
      SIRFUART_AFC_CTS_STATUS))
   goto cts_asserted;
  else
   goto cts_deasserted;
 } else {
  if (!gpio_get_value(sirfport->cts_gpio))
   goto cts_asserted;
  else
   goto cts_deasserted;
 }
cts_deasserted:
 return TIOCM_CAR | TIOCM_DSR;
cts_asserted:
 return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
}
