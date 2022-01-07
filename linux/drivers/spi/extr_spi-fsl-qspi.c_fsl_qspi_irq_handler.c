
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_qspi {int dev; int c; scalar_t__ iobase; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ QUADSPI_FR ;
 int QUADSPI_FR_TFF_MASK ;
 int complete (int *) ;
 int dev_dbg (int ,char*,int ,int) ;
 int qspi_readl (struct fsl_qspi*,scalar_t__) ;
 int qspi_writel (struct fsl_qspi*,int,scalar_t__) ;

__attribute__((used)) static irqreturn_t fsl_qspi_irq_handler(int irq, void *dev_id)
{
 struct fsl_qspi *q = dev_id;
 u32 reg;


 reg = qspi_readl(q, q->iobase + QUADSPI_FR);
 qspi_writel(q, reg, q->iobase + QUADSPI_FR);

 if (reg & QUADSPI_FR_TFF_MASK)
  complete(&q->c);

 dev_dbg(q->dev, "QUADSPI_FR : 0x%.8x:0x%.8x\n", 0, reg);
 return IRQ_HANDLED;
}
