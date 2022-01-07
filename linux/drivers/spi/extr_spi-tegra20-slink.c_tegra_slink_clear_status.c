
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_slink_data {int dummy; } ;


 int SLINK_FIFO_ERROR ;
 int SLINK_RDY ;
 int SLINK_STATUS ;
 int tegra_slink_readl (struct tegra_slink_data*,int ) ;
 int tegra_slink_writel (struct tegra_slink_data*,int,int ) ;

__attribute__((used)) static void tegra_slink_clear_status(struct tegra_slink_data *tspi)
{
 u32 val_write;

 tegra_slink_readl(tspi, SLINK_STATUS);


 val_write = SLINK_RDY | SLINK_FIFO_ERROR;
 tegra_slink_writel(tspi, val_write, SLINK_STATUS);
}
