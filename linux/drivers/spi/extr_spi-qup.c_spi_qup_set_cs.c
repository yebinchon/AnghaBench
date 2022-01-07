
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_qup {scalar_t__ base; } ;
struct spi_device {int master; } ;


 scalar_t__ SPI_IO_CONTROL ;
 int SPI_IO_C_FORCE_CS ;
 int readl_relaxed (scalar_t__) ;
 struct spi_qup* spi_master_get_devdata (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void spi_qup_set_cs(struct spi_device *spi, bool val)
{
 struct spi_qup *controller;
 u32 spi_ioc;
 u32 spi_ioc_orig;

 controller = spi_master_get_devdata(spi->master);
 spi_ioc = readl_relaxed(controller->base + SPI_IO_CONTROL);
 spi_ioc_orig = spi_ioc;
 if (!val)
  spi_ioc |= SPI_IO_C_FORCE_CS;
 else
  spi_ioc &= ~SPI_IO_C_FORCE_CS;

 if (spi_ioc != spi_ioc_orig)
  writel_relaxed(spi_ioc, controller->base + SPI_IO_CONTROL);
}
