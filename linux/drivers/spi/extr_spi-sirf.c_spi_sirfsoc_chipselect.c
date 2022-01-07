
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_device {int mode; int cs_gpio; int master; } ;
struct sirfsoc_spi {int type; TYPE_1__* regs; scalar_t__ base; scalar_t__ hw_cs; } ;
struct TYPE_2__ {scalar_t__ usp_pin_io_data; scalar_t__ spi_ctrl; } ;




 int SIRFSOC_SPI_CS_IO_OUT ;
 int SIRFSOC_USP_CS_HIGH_VALUE ;



 int SPI_CS_HIGH ;
 int gpio_direction_output (int ,int) ;
 int readl (scalar_t__) ;
 struct sirfsoc_spi* spi_master_get_devdata (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void spi_sirfsoc_chipselect(struct spi_device *spi, int value)
{
 struct sirfsoc_spi *sspi = spi_master_get_devdata(spi->master);

 if (sspi->hw_cs) {
  u32 regval;

  switch (sspi->type) {
  case 130:
   regval = readl(sspi->base + sspi->regs->spi_ctrl);
   switch (value) {
   case 132:
    if (spi->mode & SPI_CS_HIGH)
     regval |= SIRFSOC_SPI_CS_IO_OUT;
    else
     regval &= ~SIRFSOC_SPI_CS_IO_OUT;
    break;
   case 131:
    if (spi->mode & SPI_CS_HIGH)
     regval &= ~SIRFSOC_SPI_CS_IO_OUT;
    else
     regval |= SIRFSOC_SPI_CS_IO_OUT;
    break;
   }
   writel(regval, sspi->base + sspi->regs->spi_ctrl);
   break;
  case 128:
  case 129:
   regval = readl(sspi->base +
     sspi->regs->usp_pin_io_data);
   switch (value) {
   case 132:
    if (spi->mode & SPI_CS_HIGH)
     regval |= SIRFSOC_USP_CS_HIGH_VALUE;
    else
     regval &= ~(SIRFSOC_USP_CS_HIGH_VALUE);
    break;
   case 131:
    if (spi->mode & SPI_CS_HIGH)
     regval &= ~(SIRFSOC_USP_CS_HIGH_VALUE);
    else
     regval |= SIRFSOC_USP_CS_HIGH_VALUE;
    break;
   }
   writel(regval,
    sspi->base + sspi->regs->usp_pin_io_data);
   break;
  }
 } else {
  switch (value) {
  case 132:
   gpio_direction_output(spi->cs_gpio,
     spi->mode & SPI_CS_HIGH ? 1 : 0);
   break;
  case 131:
   gpio_direction_output(spi->cs_gpio,
     spi->mode & SPI_CS_HIGH ? 0 : 1);
   break;
  }
 }
}
