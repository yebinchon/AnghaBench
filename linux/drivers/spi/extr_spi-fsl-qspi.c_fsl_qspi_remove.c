
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fsl_qspi {int lock; scalar_t__ iobase; } ;


 scalar_t__ QUADSPI_MCR ;
 int QUADSPI_MCR_MDIS_MASK ;
 scalar_t__ QUADSPI_RSER ;
 int fsl_qspi_clk_disable_unprep (struct fsl_qspi*) ;
 int mutex_destroy (int *) ;
 struct fsl_qspi* platform_get_drvdata (struct platform_device*) ;
 int qspi_writel (struct fsl_qspi*,int,scalar_t__) ;

__attribute__((used)) static int fsl_qspi_remove(struct platform_device *pdev)
{
 struct fsl_qspi *q = platform_get_drvdata(pdev);


 qspi_writel(q, QUADSPI_MCR_MDIS_MASK, q->iobase + QUADSPI_MCR);
 qspi_writel(q, 0x0, q->iobase + QUADSPI_RSER);

 fsl_qspi_clk_disable_unprep(q);

 mutex_destroy(&q->lock);

 return 0;
}
