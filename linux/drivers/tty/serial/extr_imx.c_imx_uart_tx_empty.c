
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct imx_port {scalar_t__ dma_is_txing; } ;


 unsigned int TIOCSER_TEMT ;
 int USR2 ;
 int USR2_TXDC ;
 int imx_uart_readl (struct imx_port*,int ) ;

__attribute__((used)) static unsigned int imx_uart_tx_empty(struct uart_port *port)
{
 struct imx_port *sport = (struct imx_port *)port;
 unsigned int ret;

 ret = (imx_uart_readl(sport, USR2) & USR2_TXDC) ? TIOCSER_TEMT : 0;


 if (sport->dma_is_txing)
  ret = 0;

 return ret;
}
