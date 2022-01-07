
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_transfer {int bits_per_word; int speed_hz; } ;
struct spi_device {int bits_per_word; size_t chip_select; int max_speed_hz; int mode; struct davinci_spi_config* controller_data; int master; } ;
struct davinci_spi_config {int wdelay; int c2tdelay; int t2cdelay; int t2edelay; int c2edelay; scalar_t__ timer_disable; scalar_t__ parity_enable; scalar_t__ odd_parity; } ;
struct davinci_spi {int* bytes_per_word; scalar_t__ version; scalar_t__ base; int get_tx; int get_rx; } ;


 scalar_t__ SPIDELAY ;
 int SPIDELAY_C2EDELAY_MASK ;
 int SPIDELAY_C2EDELAY_SHIFT ;
 int SPIDELAY_C2TDELAY_MASK ;
 int SPIDELAY_C2TDELAY_SHIFT ;
 int SPIDELAY_T2CDELAY_MASK ;
 int SPIDELAY_T2CDELAY_SHIFT ;
 int SPIDELAY_T2EDELAY_MASK ;
 int SPIDELAY_T2EDELAY_SHIFT ;
 scalar_t__ SPIFMT0 ;
 int SPIFMT_DISTIMER_MASK ;
 int SPIFMT_ODD_PARITY_MASK ;
 int SPIFMT_PARITYENA_MASK ;
 int SPIFMT_PHASE_MASK ;
 int SPIFMT_POLARITY_MASK ;
 int SPIFMT_PRESCALE_SHIFT ;
 int SPIFMT_SHIFTDIR_MASK ;
 int SPIFMT_WAITENA_MASK ;
 int SPIFMT_WDELAY_MASK ;
 int SPIFMT_WDELAY_SHIFT ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LSB_FIRST ;
 int SPI_READY ;
 scalar_t__ SPI_VERSION_2 ;
 struct davinci_spi_config davinci_spi_default_cfg ;
 int davinci_spi_get_prescale (struct davinci_spi*,int) ;
 int davinci_spi_rx_buf_u16 ;
 int davinci_spi_rx_buf_u8 ;
 int davinci_spi_tx_buf_u16 ;
 int davinci_spi_tx_buf_u8 ;
 int iowrite32 (int,scalar_t__) ;
 struct davinci_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static int davinci_spi_setup_transfer(struct spi_device *spi,
  struct spi_transfer *t)
{

 struct davinci_spi *dspi;
 struct davinci_spi_config *spicfg;
 u8 bits_per_word = 0;
 u32 hz = 0, spifmt = 0;
 int prescale;

 dspi = spi_master_get_devdata(spi->master);
 spicfg = spi->controller_data;
 if (!spicfg)
  spicfg = &davinci_spi_default_cfg;

 if (t) {
  bits_per_word = t->bits_per_word;
  hz = t->speed_hz;
 }


 if (!bits_per_word)
  bits_per_word = spi->bits_per_word;





 if (bits_per_word <= 8) {
  dspi->get_rx = davinci_spi_rx_buf_u8;
  dspi->get_tx = davinci_spi_tx_buf_u8;
  dspi->bytes_per_word[spi->chip_select] = 1;
 } else {
  dspi->get_rx = davinci_spi_rx_buf_u16;
  dspi->get_tx = davinci_spi_tx_buf_u16;
  dspi->bytes_per_word[spi->chip_select] = 2;
 }

 if (!hz)
  hz = spi->max_speed_hz;



 prescale = davinci_spi_get_prescale(dspi, hz);
 if (prescale < 0)
  return prescale;

 spifmt = (prescale << SPIFMT_PRESCALE_SHIFT) | (bits_per_word & 0x1f);

 if (spi->mode & SPI_LSB_FIRST)
  spifmt |= SPIFMT_SHIFTDIR_MASK;

 if (spi->mode & SPI_CPOL)
  spifmt |= SPIFMT_POLARITY_MASK;

 if (!(spi->mode & SPI_CPHA))
  spifmt |= SPIFMT_PHASE_MASK;





 if (spicfg->wdelay)
  spifmt |= ((spicfg->wdelay << SPIFMT_WDELAY_SHIFT)
    & SPIFMT_WDELAY_MASK);
 if (dspi->version == SPI_VERSION_2) {

  u32 delay = 0;

  if (spicfg->odd_parity)
   spifmt |= SPIFMT_ODD_PARITY_MASK;

  if (spicfg->parity_enable)
   spifmt |= SPIFMT_PARITYENA_MASK;

  if (spicfg->timer_disable) {
   spifmt |= SPIFMT_DISTIMER_MASK;
  } else {
   delay |= (spicfg->c2tdelay << SPIDELAY_C2TDELAY_SHIFT)
      & SPIDELAY_C2TDELAY_MASK;
   delay |= (spicfg->t2cdelay << SPIDELAY_T2CDELAY_SHIFT)
      & SPIDELAY_T2CDELAY_MASK;
  }

  if (spi->mode & SPI_READY) {
   spifmt |= SPIFMT_WAITENA_MASK;
   delay |= (spicfg->t2edelay << SPIDELAY_T2EDELAY_SHIFT)
      & SPIDELAY_T2EDELAY_MASK;
   delay |= (spicfg->c2edelay << SPIDELAY_C2EDELAY_SHIFT)
      & SPIDELAY_C2EDELAY_MASK;
  }

  iowrite32(delay, dspi->base + SPIDELAY);
 }

 iowrite32(spifmt, dspi->base + SPIFMT0);

 return 0;
}
