
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct octeon_spi {scalar_t__ register_base; } ;


 scalar_t__ OCTEON_SPI_CFG (struct octeon_spi*) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 struct octeon_spi* spi_master_get_devdata (struct spi_master*) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static int octeon_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct octeon_spi *p = spi_master_get_devdata(master);


 writeq(0, p->register_base + OCTEON_SPI_CFG(p));

 return 0;
}
