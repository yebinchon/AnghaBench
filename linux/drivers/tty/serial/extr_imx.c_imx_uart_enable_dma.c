
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_port {int dma_is_enabled; } ;


 int RXTL_DMA ;
 int TXTL_DMA ;
 int UCR1 ;
 int UCR1_ATDMAEN ;
 int UCR1_RXDMAEN ;
 int UCR1_TXDMAEN ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_setup_ufcr (struct imx_port*,int ,int ) ;
 int imx_uart_writel (struct imx_port*,int,int ) ;

__attribute__((used)) static void imx_uart_enable_dma(struct imx_port *sport)
{
 u32 ucr1;

 imx_uart_setup_ufcr(sport, TXTL_DMA, RXTL_DMA);


 ucr1 = imx_uart_readl(sport, UCR1);
 ucr1 |= UCR1_RXDMAEN | UCR1_TXDMAEN | UCR1_ATDMAEN;
 imx_uart_writel(sport, ucr1, UCR1);

 sport->dma_is_enabled = 1;
}
