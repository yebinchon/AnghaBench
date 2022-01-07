
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int line; } ;
struct lpuart_port {scalar_t__ dma_rx_chan; scalar_t__ dma_tx_chan; TYPE_1__ port; } ;


 int dma_release_channel (scalar_t__) ;
 int fsl_lpuart_ida ;
 int ida_simple_remove (int *,int ) ;
 int lpuart_disable_clks (struct lpuart_port*) ;
 int lpuart_reg ;
 struct lpuart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int lpuart_remove(struct platform_device *pdev)
{
 struct lpuart_port *sport = platform_get_drvdata(pdev);

 uart_remove_one_port(&lpuart_reg, &sport->port);

 ida_simple_remove(&fsl_lpuart_ida, sport->port.line);

 lpuart_disable_clks(sport);

 if (sport->dma_tx_chan)
  dma_release_channel(sport->dma_tx_chan);

 if (sport->dma_rx_chan)
  dma_release_channel(sport->dma_rx_chan);

 return 0;
}
