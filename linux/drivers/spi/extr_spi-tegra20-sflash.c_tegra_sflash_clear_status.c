
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sflash_data {int dummy; } ;


 int SPI_FIFO_ERROR ;
 int SPI_RDY ;
 int SPI_STATUS ;
 int tegra_sflash_writel (struct tegra_sflash_data*,int,int ) ;

__attribute__((used)) static void tegra_sflash_clear_status(struct tegra_sflash_data *tsd)
{

 tegra_sflash_writel(tsd, SPI_RDY | SPI_FIFO_ERROR, SPI_STATUS);
}
