
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct mxs_auart_port {int dummy; } ;


 int AUART_LINECTRL_BRK ;
 int REG_LINECTRL ;
 int mxs_clr (int ,struct mxs_auart_port*,int ) ;
 int mxs_set (int ,struct mxs_auart_port*,int ) ;
 struct mxs_auart_port* to_auart_port (struct uart_port*) ;

__attribute__((used)) static void mxs_auart_break_ctl(struct uart_port *u, int ctl)
{
 struct mxs_auart_port *s = to_auart_port(u);

 if (ctl)
  mxs_set(AUART_LINECTRL_BRK, s, REG_LINECTRL);
 else
  mxs_clr(AUART_LINECTRL_BRK, s, REG_LINECTRL);
}
