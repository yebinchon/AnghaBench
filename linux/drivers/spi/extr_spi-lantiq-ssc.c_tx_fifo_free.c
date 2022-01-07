
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lantiq_ssc_spi {unsigned int tx_fifo_size; } ;


 unsigned int tx_fifo_level (struct lantiq_ssc_spi const*) ;

__attribute__((used)) static unsigned int tx_fifo_free(const struct lantiq_ssc_spi *spi)
{
 return spi->tx_fifo_size - tx_fifo_level(spi);
}
