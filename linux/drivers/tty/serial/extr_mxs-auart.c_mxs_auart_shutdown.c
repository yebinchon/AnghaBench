
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct mxs_auart_port {int clk; } ;


 int AUART_CTRL0_CLKGATE ;
 int AUART_CTRL2_UARTEN ;
 int AUART_INTR_CTSMIEN ;
 int AUART_INTR_RTIEN ;
 int AUART_INTR_RXIEN ;
 int REG_CTRL0 ;
 int REG_CTRL2 ;
 int REG_INTR ;
 scalar_t__ auart_dma_enabled (struct mxs_auart_port*) ;
 int clk_disable_unprepare (int ) ;
 int mxs_auart_disable_ms (struct uart_port*) ;
 int mxs_auart_dma_exit (struct mxs_auart_port*) ;
 int mxs_auart_reset_assert (struct mxs_auart_port*) ;
 int mxs_clr (int,struct mxs_auart_port*,int ) ;
 int mxs_set (int ,struct mxs_auart_port*,int ) ;
 struct mxs_auart_port* to_auart_port (struct uart_port*) ;
 scalar_t__ uart_console (struct uart_port*) ;

__attribute__((used)) static void mxs_auart_shutdown(struct uart_port *u)
{
 struct mxs_auart_port *s = to_auart_port(u);

 mxs_auart_disable_ms(u);

 if (auart_dma_enabled(s))
  mxs_auart_dma_exit(s);

 if (uart_console(u)) {
  mxs_clr(AUART_CTRL2_UARTEN, s, REG_CTRL2);

  mxs_clr(AUART_INTR_RXIEN | AUART_INTR_RTIEN |
   AUART_INTR_CTSMIEN, s, REG_INTR);
  mxs_set(AUART_CTRL0_CLKGATE, s, REG_CTRL0);
 } else {
  mxs_auart_reset_assert(s);
 }

 clk_disable_unprepare(s->clk);
}
