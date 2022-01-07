
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun6i_spi {int len; int done; int fifo_depth; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SUN6I_FIFO_DEPTH ;
 int SUN6I_INT_CTL_RF_RDY ;
 int SUN6I_INT_CTL_TC ;
 int SUN6I_INT_CTL_TF_ERQ ;
 int SUN6I_INT_STA_REG ;
 int complete (int *) ;
 int sun6i_spi_disable_interrupt (struct sun6i_spi*,int) ;
 int sun6i_spi_drain_fifo (struct sun6i_spi*,int ) ;
 int sun6i_spi_fill_fifo (struct sun6i_spi*,int ) ;
 int sun6i_spi_read (struct sun6i_spi*,int ) ;
 int sun6i_spi_write (struct sun6i_spi*,int ,int) ;

__attribute__((used)) static irqreturn_t sun6i_spi_handler(int irq, void *dev_id)
{
 struct sun6i_spi *sspi = dev_id;
 u32 status = sun6i_spi_read(sspi, SUN6I_INT_STA_REG);


 if (status & SUN6I_INT_CTL_TC) {
  sun6i_spi_write(sspi, SUN6I_INT_STA_REG, SUN6I_INT_CTL_TC);
  sun6i_spi_drain_fifo(sspi, sspi->fifo_depth);
  complete(&sspi->done);
  return IRQ_HANDLED;
 }


 if (status & SUN6I_INT_CTL_RF_RDY) {
  sun6i_spi_drain_fifo(sspi, SUN6I_FIFO_DEPTH);

  sun6i_spi_write(sspi, SUN6I_INT_STA_REG, SUN6I_INT_CTL_RF_RDY);
  return IRQ_HANDLED;
 }


 if (status & SUN6I_INT_CTL_TF_ERQ) {
  sun6i_spi_fill_fifo(sspi, SUN6I_FIFO_DEPTH);

  if (!sspi->len)

   sun6i_spi_disable_interrupt(sspi, SUN6I_INT_CTL_TF_ERQ);


  sun6i_spi_write(sspi, SUN6I_INT_STA_REG, SUN6I_INT_CTL_TF_ERQ);

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
