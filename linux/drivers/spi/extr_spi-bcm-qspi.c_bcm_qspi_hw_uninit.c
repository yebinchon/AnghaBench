
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_qspi {int dummy; } ;


 int MSPI ;
 int MSPI_SPCR2 ;
 int MSPI_WRITE_LOCK ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int ) ;
 scalar_t__ has_bspi (struct bcm_qspi*) ;

__attribute__((used)) static void bcm_qspi_hw_uninit(struct bcm_qspi *qspi)
{
 bcm_qspi_write(qspi, MSPI, MSPI_SPCR2, 0);
 if (has_bspi(qspi))
  bcm_qspi_write(qspi, MSPI, MSPI_WRITE_LOCK, 0);

}
