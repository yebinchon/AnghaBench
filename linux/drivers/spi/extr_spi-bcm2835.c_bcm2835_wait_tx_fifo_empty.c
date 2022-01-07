
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_spi {int dummy; } ;


 int BCM2835_SPI_CS ;
 int BCM2835_SPI_CS_DONE ;
 int bcm2835_rd (struct bcm2835_spi*,int ) ;
 int cpu_relax () ;

__attribute__((used)) static inline void bcm2835_wait_tx_fifo_empty(struct bcm2835_spi *bs)
{
 while (!(bcm2835_rd(bs, BCM2835_SPI_CS) & BCM2835_SPI_CS_DONE))
  cpu_relax();
}
