
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiny_spi {scalar_t__ base; } ;


 scalar_t__ TINY_SPI_STATUS ;
 int TINY_SPI_STATUS_TXR ;
 int cpu_relax () ;
 int readb (scalar_t__) ;

__attribute__((used)) static inline void tiny_spi_wait_txr(struct tiny_spi *hw)
{
 while (!(readb(hw->base + TINY_SPI_STATUS) &
   TINY_SPI_STATUS_TXR))
  cpu_relax();
}
