
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {int mode; int chip_select; } ;
struct meson_spicc_device {scalar_t__ base; struct spi_message* message; } ;


 int BIT (int) ;
 int FIELD_PREP (int ,int) ;
 int SPICC_BITLENGTH_MASK ;
 scalar_t__ SPICC_CONREG ;
 int SPICC_CS_MASK ;
 int SPICC_DRCTL_IGNORE ;
 int SPICC_DRCTL_LOWLEVEL ;
 int SPICC_DRCTL_MASK ;
 int SPICC_ENABLE ;
 int SPICC_MODE_MASTER ;
 scalar_t__ SPICC_PERIODREG ;
 int SPICC_PHA ;
 int SPICC_POL ;
 int SPICC_SSPOL ;
 scalar_t__ SPICC_TESTREG ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_READY ;
 struct meson_spicc_device* spi_master_get_devdata (struct spi_master*) ;
 int writel_bits_relaxed (int ,int ,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int meson_spicc_prepare_message(struct spi_master *master,
           struct spi_message *message)
{
 struct meson_spicc_device *spicc = spi_master_get_devdata(master);
 struct spi_device *spi = message->spi;
 u32 conf = 0;


 spicc->message = message;


 conf |= SPICC_ENABLE;
 conf |= SPICC_MODE_MASTER;




 if (spi->mode & SPI_CPOL)
  conf |= SPICC_POL;
 else
  conf &= ~SPICC_POL;

 if (spi->mode & SPI_CPHA)
  conf |= SPICC_PHA;
 else
  conf &= ~SPICC_PHA;



 if (spi->mode & SPI_CS_HIGH)
  conf |= SPICC_SSPOL;
 else
  conf &= ~SPICC_SSPOL;

 if (spi->mode & SPI_READY)
  conf |= FIELD_PREP(SPICC_DRCTL_MASK, SPICC_DRCTL_LOWLEVEL);
 else
  conf |= FIELD_PREP(SPICC_DRCTL_MASK, SPICC_DRCTL_IGNORE);


 conf |= FIELD_PREP(SPICC_CS_MASK, spi->chip_select);




 conf |= FIELD_PREP(SPICC_BITLENGTH_MASK, 8 - 1);

 writel_relaxed(conf, spicc->base + SPICC_CONREG);


 writel_relaxed(0, spicc->base + SPICC_PERIODREG);

 writel_bits_relaxed(BIT(24), BIT(24), spicc->base + SPICC_TESTREG);

 return 0;
}
