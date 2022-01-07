
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_slink_data {int def_command2_reg; int def_command_reg; } ;
struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;


 int SLINK_COMMAND ;
 int SLINK_COMMAND2 ;
 struct tegra_slink_data* spi_master_get_devdata (struct spi_master*) ;
 int tegra_slink_writel (struct tegra_slink_data*,int ,int ) ;

__attribute__((used)) static int tegra_slink_unprepare_message(struct spi_master *master,
      struct spi_message *msg)
{
 struct tegra_slink_data *tspi = spi_master_get_devdata(master);

 tegra_slink_writel(tspi, tspi->def_command_reg, SLINK_COMMAND);
 tegra_slink_writel(tspi, tspi->def_command2_reg, SLINK_COMMAND2);

 return 0;
}
