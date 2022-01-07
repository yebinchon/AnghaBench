
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;
struct bcm63xx_spi {size_t fifo_size; } ;


 struct bcm63xx_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static size_t bcm63xx_spi_max_length(struct spi_device *spi)
{
 struct bcm63xx_spi *bs = spi_master_get_devdata(spi->master);

 return bs->fifo_size;
}
