
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct xilinx_spi {int cs_inactive; int (* read_fn ) (scalar_t__) ;scalar_t__ regs; int (* write_fn ) (int,scalar_t__) ;} ;
struct spi_device {int mode; int chip_select; int master; } ;


 int BIT (int ) ;
 int BITBANG_CS_INACTIVE ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LOOP ;
 int SPI_LSB_FIRST ;
 int XSPI_CR_CPHA ;
 int XSPI_CR_CPOL ;
 int XSPI_CR_LOOP ;
 int XSPI_CR_LSB_FIRST ;
 int XSPI_CR_MODE_MASK ;
 scalar_t__ XSPI_CR_OFFSET ;
 scalar_t__ XSPI_SSR_OFFSET ;
 struct xilinx_spi* spi_master_get_devdata (int ) ;
 int stub1 (int,scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int stub4 (int,scalar_t__) ;

__attribute__((used)) static void xilinx_spi_chipselect(struct spi_device *spi, int is_on)
{
 struct xilinx_spi *xspi = spi_master_get_devdata(spi->master);
 u16 cr;
 u32 cs;

 if (is_on == BITBANG_CS_INACTIVE) {

  xspi->write_fn(xspi->cs_inactive, xspi->regs + XSPI_SSR_OFFSET);
  return;
 }


 cr = xspi->read_fn(xspi->regs + XSPI_CR_OFFSET) & ~XSPI_CR_MODE_MASK;
 if (spi->mode & SPI_CPHA)
  cr |= XSPI_CR_CPHA;
 if (spi->mode & SPI_CPOL)
  cr |= XSPI_CR_CPOL;
 if (spi->mode & SPI_LSB_FIRST)
  cr |= XSPI_CR_LSB_FIRST;
 if (spi->mode & SPI_LOOP)
  cr |= XSPI_CR_LOOP;
 xspi->write_fn(cr, xspi->regs + XSPI_CR_OFFSET);






 cs = xspi->cs_inactive;
 cs ^= BIT(spi->chip_select);


 xspi->write_fn(cs, xspi->regs + XSPI_SSR_OFFSET);
}
