
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_spi {int dummy; } ;


 unsigned int BUSY_WAIT_US ;
 int WARN_ON_ONCE (int) ;
 int XTFPGA_SPI_BUSY ;
 int udelay (int) ;
 scalar_t__ xtfpga_spi_read32 (struct xtfpga_spi*,int ) ;

__attribute__((used)) static inline void xtfpga_spi_wait_busy(struct xtfpga_spi *xspi)
{
 unsigned i;

 for (i = 0; xtfpga_spi_read32(xspi, XTFPGA_SPI_BUSY) &&
      i < BUSY_WAIT_US; ++i)
  udelay(1);
 WARN_ON_ONCE(i == BUSY_WAIT_US);
}
