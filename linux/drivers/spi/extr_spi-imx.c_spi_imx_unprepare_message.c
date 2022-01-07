
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_imx_data {int clk_per; int clk_ipg; } ;


 int clk_disable (int ) ;
 struct spi_imx_data* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int
spi_imx_unprepare_message(struct spi_master *master, struct spi_message *msg)
{
 struct spi_imx_data *spi_imx = spi_master_get_devdata(master);

 clk_disable(spi_imx->clk_ipg);
 clk_disable(spi_imx->clk_per);
 return 0;
}
