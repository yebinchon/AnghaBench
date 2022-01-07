
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sflash_data {int status_reg; int cur_direction; int tx_status; int rx_status; } ;
typedef int irqreturn_t ;


 int DATA_DIR_RX ;
 int DATA_DIR_TX ;
 int SPI_RX_UNF ;
 int SPI_STATUS ;
 int SPI_TX_OVF ;
 int handle_cpu_based_xfer (struct tegra_sflash_data*) ;
 int tegra_sflash_clear_status (struct tegra_sflash_data*) ;
 int tegra_sflash_readl (struct tegra_sflash_data*,int ) ;

__attribute__((used)) static irqreturn_t tegra_sflash_isr(int irq, void *context_data)
{
 struct tegra_sflash_data *tsd = context_data;

 tsd->status_reg = tegra_sflash_readl(tsd, SPI_STATUS);
 if (tsd->cur_direction & DATA_DIR_TX)
  tsd->tx_status = tsd->status_reg & SPI_TX_OVF;

 if (tsd->cur_direction & DATA_DIR_RX)
  tsd->rx_status = tsd->status_reg & SPI_RX_UNF;
 tegra_sflash_clear_status(tsd);

 return handle_cpu_based_xfer(tsd);
}
