
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int bits_per_word; int speed_hz; } ;
struct spi_device {int mode; } ;
struct bcm_qspi_parms {int mode; int bits_per_word; int speed_hz; } ;
struct bcm_qspi {int dummy; } ;


 int bcm_qspi_hw_set_parms (struct bcm_qspi*,struct bcm_qspi_parms*) ;

__attribute__((used)) static void bcm_qspi_update_parms(struct bcm_qspi *qspi,
      struct spi_device *spi,
      struct spi_transfer *trans)
{
 struct bcm_qspi_parms xp;

 xp.speed_hz = trans->speed_hz;
 xp.bits_per_word = trans->bits_per_word;
 xp.mode = spi->mode;

 bcm_qspi_hw_set_parms(qspi, &xp);
}
