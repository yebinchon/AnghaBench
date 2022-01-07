
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_qspi_parms {int bits_per_word; int speed_hz; int mode; } ;
struct bcm_qspi {int max_speed_hz; } ;


 int MSPI ;
 int MSPI_ENDQP ;
 int MSPI_NEWQP ;
 int MSPI_SPCR1_LSB ;
 int MSPI_SPCR1_MSB ;
 int MSPI_SPCR2 ;
 int SPI_MODE_3 ;
 int bcm_qspi_bspi_init (struct bcm_qspi*) ;
 int bcm_qspi_hw_set_parms (struct bcm_qspi*,struct bcm_qspi_parms*) ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int) ;
 scalar_t__ has_bspi (struct bcm_qspi*) ;

__attribute__((used)) static void bcm_qspi_hw_init(struct bcm_qspi *qspi)
{
 struct bcm_qspi_parms parms;

 bcm_qspi_write(qspi, MSPI, MSPI_SPCR1_LSB, 0);
 bcm_qspi_write(qspi, MSPI, MSPI_SPCR1_MSB, 0);
 bcm_qspi_write(qspi, MSPI, MSPI_NEWQP, 0);
 bcm_qspi_write(qspi, MSPI, MSPI_ENDQP, 0);
 bcm_qspi_write(qspi, MSPI, MSPI_SPCR2, 0x20);

 parms.mode = SPI_MODE_3;
 parms.bits_per_word = 8;
 parms.speed_hz = qspi->max_speed_hz;
 bcm_qspi_hw_set_parms(qspi, &parms);

 if (has_bspi(qspi))
  bcm_qspi_bspi_init(qspi);
}
