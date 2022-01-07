
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap2_mcspi {int txdone; int master; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OMAP2_MCSPI_IRQENABLE ;
 int OMAP2_MCSPI_IRQSTATUS ;
 int OMAP2_MCSPI_IRQSTATUS_EOW ;
 int complete (int *) ;
 int mcspi_read_reg (int ,int ) ;
 int mcspi_write_reg (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t omap2_mcspi_irq_handler(int irq, void *data)
{
 struct omap2_mcspi *mcspi = data;
 u32 irqstat;

 irqstat = mcspi_read_reg(mcspi->master, OMAP2_MCSPI_IRQSTATUS);
 if (!irqstat)
  return IRQ_NONE;


 mcspi_write_reg(mcspi->master, OMAP2_MCSPI_IRQENABLE, 0);
 if (irqstat & OMAP2_MCSPI_IRQSTATUS_EOW)
  complete(&mcspi->txdone);

 return IRQ_HANDLED;
}
