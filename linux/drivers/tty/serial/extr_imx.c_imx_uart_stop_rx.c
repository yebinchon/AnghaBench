
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;
struct imx_port {scalar_t__ dma_is_enabled; } ;


 int UCR1 ;
 int UCR1_ATDMAEN ;
 int UCR1_RRDYEN ;
 int UCR1_RXDMAEN ;
 int UCR2 ;
 int UCR2_ATEN ;
 int UCR2_RXEN ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_writel (struct imx_port*,int,int ) ;

__attribute__((used)) static void imx_uart_stop_rx(struct uart_port *port)
{
 struct imx_port *sport = (struct imx_port *)port;
 u32 ucr1, ucr2;

 ucr1 = imx_uart_readl(sport, UCR1);
 ucr2 = imx_uart_readl(sport, UCR2);

 if (sport->dma_is_enabled) {
  ucr1 &= ~(UCR1_RXDMAEN | UCR1_ATDMAEN);
 } else {
  ucr1 &= ~UCR1_RRDYEN;
  ucr2 &= ~UCR2_ATEN;
 }
 imx_uart_writel(sport, ucr1, UCR1);

 ucr2 &= ~UCR2_RXEN;
 imx_uart_writel(sport, ucr2, UCR2);
}
