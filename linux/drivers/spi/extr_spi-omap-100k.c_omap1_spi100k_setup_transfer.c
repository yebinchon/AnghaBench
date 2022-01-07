
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {int bits_per_word; } ;
struct spi_device {int bits_per_word; struct omap1_spi100k_cs* controller_state; int master; } ;
struct omap1_spi100k_cs {int word_len; } ;
struct omap1_spi100k {scalar_t__ base; } ;


 int EINVAL ;
 scalar_t__ SPI_CTRL ;
 scalar_t__ SPI_SETUP1 ;
 scalar_t__ SPI_STATUS ;
 struct omap1_spi100k* spi_master_get_devdata (int ) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int omap1_spi100k_setup_transfer(struct spi_device *spi,
  struct spi_transfer *t)
{
 struct omap1_spi100k *spi100k = spi_master_get_devdata(spi->master);
 struct omap1_spi100k_cs *cs = spi->controller_state;
 u8 word_len;

 if (t != ((void*)0))
  word_len = t->bits_per_word;
 else
  word_len = spi->bits_per_word;

 if (spi->bits_per_word > 32)
  return -EINVAL;
 cs->word_len = word_len;


 writew(0x3e , spi100k->base + SPI_SETUP1);
 writew(0x00 , spi100k->base + SPI_STATUS);
 writew(0x3e , spi100k->base + SPI_CTRL);

 return 0;
}
