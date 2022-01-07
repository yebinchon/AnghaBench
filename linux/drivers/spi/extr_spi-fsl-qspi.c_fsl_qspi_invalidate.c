
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_qspi {scalar_t__ iobase; } ;


 scalar_t__ QUADSPI_MCR ;
 int QUADSPI_MCR_SWRSTHD_MASK ;
 int QUADSPI_MCR_SWRSTSD_MASK ;
 int qspi_readl (struct fsl_qspi*,scalar_t__) ;
 int qspi_writel (struct fsl_qspi*,int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void fsl_qspi_invalidate(struct fsl_qspi *q)
{
 u32 reg;

 reg = qspi_readl(q, q->iobase + QUADSPI_MCR);
 reg |= QUADSPI_MCR_SWRSTHD_MASK | QUADSPI_MCR_SWRSTSD_MASK;
 qspi_writel(q, reg, q->iobase + QUADSPI_MCR);





 udelay(1);

 reg &= ~(QUADSPI_MCR_SWRSTHD_MASK | QUADSPI_MCR_SWRSTSD_MASK);
 qspi_writel(q, reg, q->iobase + QUADSPI_MCR);
}
