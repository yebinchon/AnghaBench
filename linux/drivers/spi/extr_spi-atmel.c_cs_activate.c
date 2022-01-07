
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct spi_device {int chip_select; int mode; int dev; TYPE_2__* master; struct atmel_spi_device* controller_state; } ;
struct atmel_spi_device {int csr; int npcs_pin; } ;
struct TYPE_3__ {scalar_t__ has_wdrbt; } ;
struct atmel_spi {scalar_t__ use_cs_gpios; TYPE_1__ caps; } ;
struct TYPE_4__ {int num_chipselect; } ;


 int CPOL ;
 scalar_t__ CSR0 ;
 int MODFDIS ;
 scalar_t__ MR ;
 int MSTR ;
 int PCS ;
 int SPI_BF (int ,int) ;
 int SPI_BFINS (int ,int,int) ;
 int SPI_BIT (int ) ;
 int SPI_CPOL ;
 int WDRBT ;
 scalar_t__ atmel_spi_is_v2 (struct atmel_spi*) ;
 int dev_dbg (int *,char*,int) ;
 int gpiod_set_value (int ,int) ;
 int spi_readl (struct atmel_spi*,scalar_t__) ;
 int spi_writel (struct atmel_spi*,scalar_t__,int) ;

__attribute__((used)) static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
{
 struct atmel_spi_device *asd = spi->controller_state;
 u32 mr;

 if (atmel_spi_is_v2(as)) {
  spi_writel(as, CSR0 + 4 * spi->chip_select, asd->csr);



  spi_writel(as, CSR0, asd->csr);
  if (as->caps.has_wdrbt) {
   spi_writel(as, MR,
     SPI_BF(PCS, ~(0x01 << spi->chip_select))
     | SPI_BIT(WDRBT)
     | SPI_BIT(MODFDIS)
     | SPI_BIT(MSTR));
  } else {
   spi_writel(as, MR,
     SPI_BF(PCS, ~(0x01 << spi->chip_select))
     | SPI_BIT(MODFDIS)
     | SPI_BIT(MSTR));
  }

  mr = spi_readl(as, MR);
  if (as->use_cs_gpios)
   gpiod_set_value(asd->npcs_pin, 1);
 } else {
  u32 cpol = (spi->mode & SPI_CPOL) ? SPI_BIT(CPOL) : 0;
  int i;
  u32 csr;


  for (i = 0; i < spi->master->num_chipselect; i++) {
   csr = spi_readl(as, CSR0 + 4 * i);
   if ((csr ^ cpol) & SPI_BIT(CPOL))
    spi_writel(as, CSR0 + 4 * i,
      csr ^ SPI_BIT(CPOL));
  }

  mr = spi_readl(as, MR);
  mr = SPI_BFINS(PCS, ~(1 << spi->chip_select), mr);
  if (as->use_cs_gpios && spi->chip_select != 0)
   gpiod_set_value(asd->npcs_pin, 1);
  spi_writel(as, MR, mr);
 }

 dev_dbg(&spi->dev, "activate NPCS, mr %08x\n", mr);
}
