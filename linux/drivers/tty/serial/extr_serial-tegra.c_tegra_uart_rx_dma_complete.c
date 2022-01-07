
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; int dev; } ;
struct tegra_uart_port {scalar_t__ rts_active; struct uart_port uport; int rx_cookie; int rx_dma_chan; } ;
struct dma_tx_state {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;


 int DMA_IN_PROGRESS ;
 int dev_dbg (int ,char*) ;
 int dmaengine_tx_status (int ,int ,struct dma_tx_state*) ;
 int set_rts (struct tegra_uart_port*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_uart_rx_buffer_push (struct tegra_uart_port*,int ) ;
 int tegra_uart_start_rx_dma (struct tegra_uart_port*) ;

__attribute__((used)) static void tegra_uart_rx_dma_complete(void *args)
{
 struct tegra_uart_port *tup = args;
 struct uart_port *u = &tup->uport;
 unsigned long flags;
 struct dma_tx_state state;
 enum dma_status status;

 spin_lock_irqsave(&u->lock, flags);

 status = dmaengine_tx_status(tup->rx_dma_chan, tup->rx_cookie, &state);

 if (status == DMA_IN_PROGRESS) {
  dev_dbg(tup->uport.dev, "RX DMA is in progress\n");
  goto done;
 }


 if (tup->rts_active)
  set_rts(tup, 0);

 tegra_uart_rx_buffer_push(tup, 0);
 tegra_uart_start_rx_dma(tup);


 if (tup->rts_active)
  set_rts(tup, 1);

done:
 spin_unlock_irqrestore(&u->lock, flags);
}
