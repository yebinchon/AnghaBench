
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_lpspi_data {int watermark; int dev; scalar_t__ base; int usedma; } ;


 scalar_t__ IMX7ULP_FCR ;
 int dev_dbg (int ,char*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void fsl_lpspi_set_watermark(struct fsl_lpspi_data *fsl_lpspi)
{
 u32 temp;

 if (!fsl_lpspi->usedma)
  temp = fsl_lpspi->watermark >> 1 |
         (fsl_lpspi->watermark >> 1) << 16;
 else
  temp = fsl_lpspi->watermark >> 1;

 writel(temp, fsl_lpspi->base + IMX7ULP_FCR);

 dev_dbg(fsl_lpspi->dev, "FCR=0x%x\n", temp);
}
