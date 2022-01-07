
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct mxs_auart_port {int dummy; } ;


 int AUART_STAT_BUSY ;
 int AUART_STAT_TXFE ;
 int REG_STAT ;
 unsigned int TIOCSER_TEMT ;
 int mxs_read (struct mxs_auart_port*,int ) ;
 struct mxs_auart_port* to_auart_port (struct uart_port*) ;

__attribute__((used)) static unsigned int mxs_auart_tx_empty(struct uart_port *u)
{
 struct mxs_auart_port *s = to_auart_port(u);

 if ((mxs_read(s, REG_STAT) &
   (AUART_STAT_TXFE | AUART_STAT_BUSY)) == AUART_STAT_TXFE)
  return TIOCSER_TEMT;

 return 0;
}
