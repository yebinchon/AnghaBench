
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int fifosize; } ;
struct mxs_auart_port {int ms_irq_enabled; int mctrl_prev; int gpios; int clk; } ;


 int AUART_CTRL0_CLKGATE ;
 int AUART_CTRL2_UARTEN ;
 int AUART_INTR_CTSMIEN ;
 int AUART_INTR_RTIEN ;
 int AUART_INTR_RXIEN ;
 int AUART_LINECTRL_FEN ;
 int MXS_AUART_FIFO_SIZE ;
 int REG_CTRL0 ;
 int REG_CTRL2 ;
 int REG_INTR ;
 int REG_LINECTRL ;
 int clk_prepare_enable (int ) ;
 int mctrl_gpio_get (int ,int *) ;
 int mxs_auart_reset_assert (struct mxs_auart_port*) ;
 int mxs_auart_reset_deassert (struct mxs_auart_port*) ;
 int mxs_clr (int ,struct mxs_auart_port*,int ) ;
 int mxs_set (int ,struct mxs_auart_port*,int ) ;
 int mxs_write (int,struct mxs_auart_port*,int ) ;
 struct mxs_auart_port* to_auart_port (struct uart_port*) ;
 scalar_t__ uart_console (struct uart_port*) ;

__attribute__((used)) static int mxs_auart_startup(struct uart_port *u)
{
 int ret;
 struct mxs_auart_port *s = to_auart_port(u);

 ret = clk_prepare_enable(s->clk);
 if (ret)
  return ret;

 if (uart_console(u)) {
  mxs_clr(AUART_CTRL0_CLKGATE, s, REG_CTRL0);
 } else {

  mxs_auart_reset_assert(s);
  mxs_auart_reset_deassert(s);
 }

 mxs_set(AUART_CTRL2_UARTEN, s, REG_CTRL2);

 mxs_write(AUART_INTR_RXIEN | AUART_INTR_RTIEN | AUART_INTR_CTSMIEN,
    s, REG_INTR);


 u->fifosize = MXS_AUART_FIFO_SIZE;





 mxs_set(AUART_LINECTRL_FEN, s, REG_LINECTRL);


 mctrl_gpio_get(s->gpios, &s->mctrl_prev);

 s->ms_irq_enabled = 0;
 return 0;
}
