
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct a3700_spi {int clk; } ;


 int clk_unprepare (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 struct a3700_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int a3700_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct a3700_spi *spi = spi_master_get_devdata(master);

 clk_unprepare(spi->clk);

 return 0;
}
