
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_slink_data {int status_reg; int cur_direction; int tx_status; int rx_status; } ;
typedef int irqreturn_t ;


 int DATA_DIR_RX ;
 int DATA_DIR_TX ;
 int IRQ_WAKE_THREAD ;
 int SLINK_RX_OVF ;
 int SLINK_RX_UNF ;
 int SLINK_STATUS ;
 int SLINK_TX_OVF ;
 int SLINK_TX_UNF ;
 int tegra_slink_clear_status (struct tegra_slink_data*) ;
 int tegra_slink_readl (struct tegra_slink_data*,int ) ;

__attribute__((used)) static irqreturn_t tegra_slink_isr(int irq, void *context_data)
{
 struct tegra_slink_data *tspi = context_data;

 tspi->status_reg = tegra_slink_readl(tspi, SLINK_STATUS);
 if (tspi->cur_direction & DATA_DIR_TX)
  tspi->tx_status = tspi->status_reg &
     (SLINK_TX_OVF | SLINK_TX_UNF);

 if (tspi->cur_direction & DATA_DIR_RX)
  tspi->rx_status = tspi->status_reg &
     (SLINK_RX_OVF | SLINK_RX_UNF);
 tegra_slink_clear_status(tspi);

 return IRQ_WAKE_THREAD;
}
