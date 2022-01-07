
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;
struct a3700_spi {unsigned int wait_mask; } ;


 int a3700_spi_wait_completion (struct spi_device*) ;
 struct a3700_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static bool a3700_spi_transfer_wait(struct spi_device *spi,
        unsigned int bit_mask)
{
 struct a3700_spi *a3700_spi;

 a3700_spi = spi_master_get_devdata(spi->master);
 a3700_spi->wait_mask = bit_mask;

 return a3700_spi_wait_completion(spi);
}
