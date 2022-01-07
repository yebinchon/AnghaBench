
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_spi {int len; int done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SUN4I_FIFO_DEPTH ;
 int SUN4I_INT_CTL_RF_F34 ;
 int SUN4I_INT_CTL_TC ;
 int SUN4I_INT_CTL_TF_E34 ;
 int SUN4I_INT_STA_REG ;
 int complete (int *) ;
 int sun4i_spi_disable_interrupt (struct sun4i_spi*,int) ;
 int sun4i_spi_drain_fifo (struct sun4i_spi*,int ) ;
 int sun4i_spi_fill_fifo (struct sun4i_spi*,int ) ;
 int sun4i_spi_read (struct sun4i_spi*,int ) ;
 int sun4i_spi_write (struct sun4i_spi*,int ,int) ;

__attribute__((used)) static irqreturn_t sun4i_spi_handler(int irq, void *dev_id)
{
 struct sun4i_spi *sspi = dev_id;
 u32 status = sun4i_spi_read(sspi, SUN4I_INT_STA_REG);


 if (status & SUN4I_INT_CTL_TC) {
  sun4i_spi_write(sspi, SUN4I_INT_STA_REG, SUN4I_INT_CTL_TC);
  sun4i_spi_drain_fifo(sspi, SUN4I_FIFO_DEPTH);
  complete(&sspi->done);
  return IRQ_HANDLED;
 }


 if (status & SUN4I_INT_CTL_RF_F34) {
  sun4i_spi_drain_fifo(sspi, SUN4I_FIFO_DEPTH);

  sun4i_spi_write(sspi, SUN4I_INT_STA_REG, SUN4I_INT_CTL_RF_F34);
  return IRQ_HANDLED;
 }


 if (status & SUN4I_INT_CTL_TF_E34) {
  sun4i_spi_fill_fifo(sspi, SUN4I_FIFO_DEPTH);

  if (!sspi->len)

   sun4i_spi_disable_interrupt(sspi, SUN4I_INT_CTL_TF_E34);


  sun4i_spi_write(sspi, SUN4I_INT_STA_REG, SUN4I_INT_CTL_TF_E34);

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
