
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_qspi {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BSPI ;
 int BSPI_BUSY_STATUS ;
 int EIO ;
 int bcm_qspi_read (struct bcm_qspi*,int ,int ) ;
 int dev_warn (int *,char*) ;
 int udelay (int) ;

__attribute__((used)) static int bcm_qspi_bspi_busy_poll(struct bcm_qspi *qspi)
{
 int i;


 for (i = 0; i < 1000; i++) {
  if (!(bcm_qspi_read(qspi, BSPI, BSPI_BUSY_STATUS) & 1))
   return 0;
  udelay(1);
 }
 dev_warn(&qspi->pdev->dev, "timeout waiting for !busy_status\n");
 return -EIO;
}
