
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_spi {int hclk; int mclk; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct spi_master* dev_get_drvdata (struct device*) ;
 struct sun4i_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int sun4i_spi_runtime_suspend(struct device *dev)
{
 struct spi_master *master = dev_get_drvdata(dev);
 struct sun4i_spi *sspi = spi_master_get_devdata(master);

 clk_disable_unprepare(sspi->mclk);
 clk_disable_unprepare(sspi->hclk);

 return 0;
}
