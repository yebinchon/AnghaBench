
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; } ;


 int SPI_3WIRE ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 unsigned int SPI_ENGINE_CONFIG_3WIRE ;
 unsigned int SPI_ENGINE_CONFIG_CPHA ;
 unsigned int SPI_ENGINE_CONFIG_CPOL ;

__attribute__((used)) static unsigned int spi_engine_get_config(struct spi_device *spi)
{
 unsigned int config = 0;

 if (spi->mode & SPI_CPOL)
  config |= SPI_ENGINE_CONFIG_CPOL;
 if (spi->mode & SPI_CPHA)
  config |= SPI_ENGINE_CONFIG_CPHA;
 if (spi->mode & SPI_3WIRE)
  config |= SPI_ENGINE_CONFIG_3WIRE;

 return config;
}
