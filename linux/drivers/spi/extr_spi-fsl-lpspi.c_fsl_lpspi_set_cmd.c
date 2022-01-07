
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bpw; int mode; int prescale; int chip_select; } ;
struct fsl_lpspi_data {int dev; scalar_t__ base; scalar_t__ is_first_byte; int usedma; TYPE_1__ config; int is_slave; } ;


 scalar_t__ IMX7ULP_TCR ;
 int TCR_CONT ;
 int TCR_CONTC ;
 int dev_dbg (int ,char*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void fsl_lpspi_set_cmd(struct fsl_lpspi_data *fsl_lpspi)
{
 u32 temp = 0;

 temp |= fsl_lpspi->config.bpw - 1;
 temp |= (fsl_lpspi->config.mode & 0x3) << 30;
 if (!fsl_lpspi->is_slave) {
  temp |= fsl_lpspi->config.prescale << 27;
  temp |= (fsl_lpspi->config.chip_select & 0x3) << 24;






  if (!fsl_lpspi->usedma) {
   temp |= TCR_CONT;
   if (fsl_lpspi->is_first_byte)
    temp &= ~TCR_CONTC;
   else
    temp |= TCR_CONTC;
  }
 }
 writel(temp, fsl_lpspi->base + IMX7ULP_TCR);

 dev_dbg(fsl_lpspi->dev, "TCR=0x%x\n", temp);
}
