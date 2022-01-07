
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_lpspi_data {scalar_t__ base; } ;


 scalar_t__ IMX7ULP_IER ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void fsl_lpspi_intctrl(struct fsl_lpspi_data *fsl_lpspi,
         unsigned int enable)
{
 writel(enable, fsl_lpspi->base + IMX7ULP_IER);
}
