
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;
struct ath79_spi {int dummy; } ;


 struct ath79_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static inline struct ath79_spi *ath79_spidev_to_sp(struct spi_device *spi)
{
 return spi_master_get_devdata(spi->master);
}
