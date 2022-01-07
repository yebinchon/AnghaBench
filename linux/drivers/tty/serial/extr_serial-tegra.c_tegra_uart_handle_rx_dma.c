
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_uart_port {scalar_t__ rts_active; int rx_cookie; int rx_dma_chan; } ;
struct dma_tx_state {int residue; } ;


 int dmaengine_terminate_all (int ) ;
 int dmaengine_tx_status (int ,int ,struct dma_tx_state*) ;
 int set_rts (struct tegra_uart_port*,int) ;
 int tegra_uart_rx_buffer_push (struct tegra_uart_port*,int ) ;
 int tegra_uart_start_rx_dma (struct tegra_uart_port*) ;

__attribute__((used)) static void tegra_uart_handle_rx_dma(struct tegra_uart_port *tup)
{
 struct dma_tx_state state;


 if (tup->rts_active)
  set_rts(tup, 0);

 dmaengine_terminate_all(tup->rx_dma_chan);
 dmaengine_tx_status(tup->rx_dma_chan, tup->rx_cookie, &state);
 tegra_uart_rx_buffer_push(tup, state.residue);
 tegra_uart_start_rx_dma(tup);

 if (tup->rts_active)
  set_rts(tup, 1);
}
