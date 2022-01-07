
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct imx_port {scalar_t__ dma_is_txing; int dma_tx_nents; TYPE_1__ port; int dma_chan_tx; scalar_t__ tx_bytes; struct scatterlist* tx_sgl; } ;


 int DMA_TO_DEVICE ;
 int IMX21_UTS ;
 int UBIR ;
 int UBMR ;
 int UCR1 ;
 int UCR1_TXDMAEN ;
 int UCR2 ;
 int UCR2_SRST ;
 int dma_unmap_sg (int ,struct scatterlist*,int ,int ) ;
 int dmaengine_terminate_all (int ) ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_writel (struct imx_port*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void imx_uart_flush_buffer(struct uart_port *port)
{
 struct imx_port *sport = (struct imx_port *)port;
 struct scatterlist *sgl = &sport->tx_sgl[0];
 u32 ucr2;
 int i = 100, ubir, ubmr, uts;

 if (!sport->dma_chan_tx)
  return;

 sport->tx_bytes = 0;
 dmaengine_terminate_all(sport->dma_chan_tx);
 if (sport->dma_is_txing) {
  u32 ucr1;

  dma_unmap_sg(sport->port.dev, sgl, sport->dma_tx_nents,
        DMA_TO_DEVICE);
  ucr1 = imx_uart_readl(sport, UCR1);
  ucr1 &= ~UCR1_TXDMAEN;
  imx_uart_writel(sport, ucr1, UCR1);
  sport->dma_is_txing = 0;
 }
 ubir = imx_uart_readl(sport, UBIR);
 ubmr = imx_uart_readl(sport, UBMR);
 uts = imx_uart_readl(sport, IMX21_UTS);

 ucr2 = imx_uart_readl(sport, UCR2);
 ucr2 &= ~UCR2_SRST;
 imx_uart_writel(sport, ucr2, UCR2);

 while (!(imx_uart_readl(sport, UCR2) & UCR2_SRST) && (--i > 0))
  udelay(1);


 imx_uart_writel(sport, ubir, UBIR);
 imx_uart_writel(sport, ubmr, UBMR);
 imx_uart_writel(sport, uts, IMX21_UTS);
}
