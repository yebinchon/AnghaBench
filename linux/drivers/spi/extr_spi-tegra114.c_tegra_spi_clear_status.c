
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_spi_data {int dummy; } ;


 int SPI_ERR ;
 int SPI_FIFO_ERROR ;
 int SPI_FIFO_STATUS ;
 int SPI_TRANS_STATUS ;
 int tegra_spi_readl (struct tegra_spi_data*,int ) ;
 int tegra_spi_writel (struct tegra_spi_data*,int,int ) ;

__attribute__((used)) static void tegra_spi_clear_status(struct tegra_spi_data *tspi)
{
 u32 val;


 val = tegra_spi_readl(tspi, SPI_TRANS_STATUS);
 tegra_spi_writel(tspi, val, SPI_TRANS_STATUS);


 val = tegra_spi_readl(tspi, SPI_FIFO_STATUS);
 if (val & SPI_ERR)
  tegra_spi_writel(tspi, SPI_ERR | SPI_FIFO_ERROR,
    SPI_FIFO_STATUS);
}
