
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_lpspi_data {scalar_t__ base; int usedma; } ;


 int CR_RRF ;
 int CR_RTF ;
 scalar_t__ IMX7ULP_CR ;
 scalar_t__ IMX7ULP_SR ;
 int fsl_lpspi_intctrl (struct fsl_lpspi_data*,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int fsl_lpspi_reset(struct fsl_lpspi_data *fsl_lpspi)
{
 u32 temp;

 if (!fsl_lpspi->usedma) {

  fsl_lpspi_intctrl(fsl_lpspi, 0);
 }


 temp = 0x3F << 8;
 writel(temp, fsl_lpspi->base + IMX7ULP_SR);


 temp = CR_RRF | CR_RTF;
 writel(temp, fsl_lpspi->base + IMX7ULP_CR);

 return 0;
}
