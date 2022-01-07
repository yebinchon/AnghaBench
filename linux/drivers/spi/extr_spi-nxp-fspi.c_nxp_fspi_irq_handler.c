
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nxp_fspi {int c; scalar_t__ iobase; } ;
typedef int irqreturn_t ;


 scalar_t__ FSPI_INTR ;
 int FSPI_INTR_IPCMDDONE ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int fspi_readl (struct nxp_fspi*,scalar_t__) ;
 int fspi_writel (struct nxp_fspi*,int,scalar_t__) ;

__attribute__((used)) static irqreturn_t nxp_fspi_irq_handler(int irq, void *dev_id)
{
 struct nxp_fspi *f = dev_id;
 u32 reg;


 reg = fspi_readl(f, f->iobase + FSPI_INTR);
 fspi_writel(f, FSPI_INTR_IPCMDDONE, f->iobase + FSPI_INTR);

 if (reg & FSPI_INTR_IPCMDDONE)
  complete(&f->c);

 return IRQ_HANDLED;
}
