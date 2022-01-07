
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int mode; int max_speed_hz; } ;
struct bcm_qspi_parms {int bits_per_word; int mode; int speed_hz; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct bcm_qspi_parms* kzalloc (int,int ) ;
 struct bcm_qspi_parms* spi_get_ctldata (struct spi_device*) ;
 int spi_set_ctldata (struct spi_device*,struct bcm_qspi_parms*) ;

__attribute__((used)) static int bcm_qspi_setup(struct spi_device *spi)
{
 struct bcm_qspi_parms *xp;

 if (spi->bits_per_word > 16)
  return -EINVAL;

 xp = spi_get_ctldata(spi);
 if (!xp) {
  xp = kzalloc(sizeof(*xp), GFP_KERNEL);
  if (!xp)
   return -ENOMEM;
  spi_set_ctldata(spi, xp);
 }
 xp->speed_hz = spi->max_speed_hz;
 xp->mode = spi->mode;

 if (spi->bits_per_word)
  xp->bits_per_word = spi->bits_per_word;
 else
  xp->bits_per_word = 8;

 return 0;
}
