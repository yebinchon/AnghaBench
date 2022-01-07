
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_qspi {int bspi_enabled; } ;


 int BSPI ;
 int BSPI_MAST_N_BOOT_CTRL ;
 int bcm_qspi_bspi_flush_prefetch_buffers (struct bcm_qspi*) ;
 int bcm_qspi_read (struct bcm_qspi*,int ,int ) ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int ) ;
 int has_bspi (struct bcm_qspi*) ;
 int udelay (int) ;

__attribute__((used)) static void bcm_qspi_enable_bspi(struct bcm_qspi *qspi)
{
 if (!has_bspi(qspi))
  return;

 qspi->bspi_enabled = 1;
 if ((bcm_qspi_read(qspi, BSPI, BSPI_MAST_N_BOOT_CTRL) & 1) == 0)
  return;

 bcm_qspi_bspi_flush_prefetch_buffers(qspi);
 udelay(1);
 bcm_qspi_write(qspi, BSPI, BSPI_MAST_N_BOOT_CTRL, 0);
 udelay(1);
}
