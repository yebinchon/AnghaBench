
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;
struct mt7621_spi {int dummy; } ;


 struct mt7621_spi* spi_controller_get_devdata (int ) ;

__attribute__((used)) static inline struct mt7621_spi *spidev_to_mt7621_spi(struct spi_device *spi)
{
 return spi_controller_get_devdata(spi->master);
}
