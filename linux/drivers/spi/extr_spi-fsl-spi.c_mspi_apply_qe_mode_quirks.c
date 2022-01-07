
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_mpc8xxx_cs {int dummy; } ;
struct spi_device {int mode; } ;


 int EINVAL ;
 int SPI_LSB_FIRST ;

__attribute__((used)) static int mspi_apply_qe_mode_quirks(struct spi_mpc8xxx_cs *cs,
    struct spi_device *spi,
    int bits_per_word)
{






 if (spi->mode & SPI_LSB_FIRST &&
     bits_per_word > 8)
  return -EINVAL;
 if (bits_per_word > 8)
  return 8;
 return bits_per_word;
}
