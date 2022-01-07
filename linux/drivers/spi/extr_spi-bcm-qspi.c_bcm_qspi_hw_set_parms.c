
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_qspi_parms {int speed_hz; int bits_per_word; int mode; } ;
struct bcm_qspi {int base_clk; struct bcm_qspi_parms last_parms; } ;


 int MSPI ;
 int MSPI_MASTER_BIT ;
 int MSPI_SPCR0_LSB ;
 int MSPI_SPCR0_MSB ;
 int QSPI_SPBR_MAX ;
 int QSPI_SPBR_MIN ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int) ;
 int clamp_val (int,int ,int ) ;

__attribute__((used)) static void bcm_qspi_hw_set_parms(struct bcm_qspi *qspi,
      const struct bcm_qspi_parms *xp)
{
 u32 spcr, spbr = 0;

 if (xp->speed_hz)
  spbr = qspi->base_clk / (2 * xp->speed_hz);

 spcr = clamp_val(spbr, QSPI_SPBR_MIN, QSPI_SPBR_MAX);
 bcm_qspi_write(qspi, MSPI, MSPI_SPCR0_LSB, spcr);

 spcr = MSPI_MASTER_BIT;

 if (xp->bits_per_word != 16)
  spcr |= xp->bits_per_word << 2;
 spcr |= xp->mode & 3;
 bcm_qspi_write(qspi, MSPI, MSPI_SPCR0_MSB, spcr);

 qspi->last_parms = *xp;
}
