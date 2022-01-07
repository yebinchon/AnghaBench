
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_qspi {int dummy; } ;


 int BSPI ;
 int BSPI_B0_CTRL ;
 int BSPI_B1_CTRL ;
 int bcm_qspi_bspi_busy_poll (struct bcm_qspi*) ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int) ;

__attribute__((used)) static void bcm_qspi_bspi_flush_prefetch_buffers(struct bcm_qspi *qspi)
{
 bcm_qspi_bspi_busy_poll(qspi);

 bcm_qspi_write(qspi, BSPI, BSPI_B0_CTRL, 1);
 bcm_qspi_write(qspi, BSPI, BSPI_B1_CTRL, 1);
 bcm_qspi_write(qspi, BSPI, BSPI_B0_CTRL, 0);
 bcm_qspi_write(qspi, BSPI, BSPI_B1_CTRL, 0);
}
