
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct mxs_auart_port {int dummy; } ;


 int AUART_CTRL2_TXE ;
 int REG_CTRL2 ;
 int mxs_clr (int ,struct mxs_auart_port*,int ) ;
 struct mxs_auart_port* to_auart_port (struct uart_port*) ;

__attribute__((used)) static void mxs_auart_stop_tx(struct uart_port *u)
{
 struct mxs_auart_port *s = to_auart_port(u);

 mxs_clr(AUART_CTRL2_TXE, s, REG_CTRL2);
}
