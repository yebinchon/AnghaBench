
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcm_qspi {int curr_cs; TYPE_1__* pdev; scalar_t__* base; } ;
struct TYPE_2__ {int dev; } ;


 size_t CHIP_SELECT ;
 int bcm_qspi_read (struct bcm_qspi*,size_t,int ) ;
 int bcm_qspi_write (struct bcm_qspi*,size_t,int ,int) ;
 int dev_dbg (int *,char*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void bcm_qspi_chip_select(struct bcm_qspi *qspi, int cs)
{
 u32 rd = 0;
 u32 wr = 0;

 if (qspi->base[CHIP_SELECT]) {
  rd = bcm_qspi_read(qspi, CHIP_SELECT, 0);
  wr = (rd & ~0xff) | (1 << cs);
  if (rd == wr)
   return;
  bcm_qspi_write(qspi, CHIP_SELECT, 0, wr);
  usleep_range(10, 20);
 }

 dev_dbg(&qspi->pdev->dev, "using cs:%d\n", cs);
 qspi->curr_cs = cs;
}
