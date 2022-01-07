
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct sifive_spi {int dummy; } ;
struct platform_device {int dummy; } ;


 int SIFIVE_SPI_REG_IE ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int sifive_spi_write (struct sifive_spi*,int ,int ) ;
 struct sifive_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int sifive_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct sifive_spi *spi = spi_master_get_devdata(master);


 sifive_spi_write(spi, SIFIVE_SPI_REG_IE, 0);

 return 0;
}
