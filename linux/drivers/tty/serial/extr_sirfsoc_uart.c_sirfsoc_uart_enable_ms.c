
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct sirfsoc_uart_port {int ms_enabled; int cts_gpio; int is_atlas7; TYPE_1__* uart_reg; int hw_flow_ctrl; } ;
struct sirfsoc_register {int sirfsoc_int_en_reg; int sirfsoc_afc_ctrl; } ;
struct sirfsoc_int_en {int sirfsoc_cts_en; } ;
struct TYPE_2__ {scalar_t__ uart_type; struct sirfsoc_int_en uart_int_en; struct sirfsoc_register uart_reg; } ;


 int SIRFUART_AFC_CTRL_RX_THD ;
 int SIRFUART_AFC_RX_EN ;
 int SIRFUART_AFC_TX_EN ;
 scalar_t__ SIRF_REAL_UART ;
 int enable_irq (int ) ;
 int gpio_to_irq (int ) ;
 int rd_regl (struct uart_port*,int ) ;
 struct sirfsoc_uart_port* to_sirfport (struct uart_port*) ;
 int wr_regl (struct uart_port*,int ,int) ;

__attribute__((used)) static void sirfsoc_uart_enable_ms(struct uart_port *port)
{
 struct sirfsoc_uart_port *sirfport = to_sirfport(port);
 struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
 struct sirfsoc_int_en *uint_en = &sirfport->uart_reg->uart_int_en;

 if (!sirfport->hw_flow_ctrl)
  return;
 sirfport->ms_enabled = 1;
 if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
  wr_regl(port, ureg->sirfsoc_afc_ctrl,
    rd_regl(port, ureg->sirfsoc_afc_ctrl) |
    SIRFUART_AFC_TX_EN | SIRFUART_AFC_RX_EN |
    SIRFUART_AFC_CTRL_RX_THD);
  if (!sirfport->is_atlas7)
   wr_regl(port, ureg->sirfsoc_int_en_reg,
     rd_regl(port, ureg->sirfsoc_int_en_reg)
     | uint_en->sirfsoc_cts_en);
  else
   wr_regl(port, ureg->sirfsoc_int_en_reg,
     uint_en->sirfsoc_cts_en);
 } else
  enable_irq(gpio_to_irq(sirfport->cts_gpio));
}
