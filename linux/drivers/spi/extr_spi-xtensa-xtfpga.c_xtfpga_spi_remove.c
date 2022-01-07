
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_spi {int bitbang; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;


 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (int *) ;
 struct xtfpga_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int xtfpga_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct xtfpga_spi *xspi = spi_master_get_devdata(master);

 spi_bitbang_stop(&xspi->bitbang);
 spi_master_put(master);

 return 0;
}
