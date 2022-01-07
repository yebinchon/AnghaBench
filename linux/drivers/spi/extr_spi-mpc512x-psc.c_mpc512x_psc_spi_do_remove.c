
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct mpc512x_psc_spi {int clk_ipg; int clk_mclk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct spi_master* dev_get_drvdata (struct device*) ;
 struct mpc512x_psc_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int mpc512x_psc_spi_do_remove(struct device *dev)
{
 struct spi_master *master = dev_get_drvdata(dev);
 struct mpc512x_psc_spi *mps = spi_master_get_devdata(master);

 clk_disable_unprepare(mps->clk_mclk);
 clk_disable_unprepare(mps->clk_ipg);

 return 0;
}
