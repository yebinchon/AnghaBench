
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int master; } ;
struct sifive_spi {int dummy; } ;


 int SIFIVE_SPI_CSMODE_MODE_AUTO ;
 int SIFIVE_SPI_CSMODE_MODE_HOLD ;
 int SIFIVE_SPI_REG_CSMODE ;
 int SPI_CS_HIGH ;
 int sifive_spi_write (struct sifive_spi*,int ,int ) ;
 struct sifive_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void sifive_spi_set_cs(struct spi_device *device, bool is_high)
{
 struct sifive_spi *spi = spi_master_get_devdata(device->master);


 if (device->mode & SPI_CS_HIGH)
  is_high = !is_high;

 sifive_spi_write(spi, SIFIVE_SPI_REG_CSMODE, is_high ?
    SIFIVE_SPI_CSMODE_MODE_AUTO :
    SIFIVE_SPI_CSMODE_MODE_HOLD);
}
