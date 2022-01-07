
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_st {int done; scalar_t__ base; scalar_t__ words_remaining; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ SSC_IEN ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int ssc_read_rx_fifo (struct spi_st*) ;
 int ssc_write_tx_fifo (struct spi_st*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t spi_st_irq(int irq, void *dev_id)
{
 struct spi_st *spi_st = (struct spi_st *)dev_id;


 ssc_read_rx_fifo(spi_st);


 if (spi_st->words_remaining) {
  ssc_write_tx_fifo(spi_st);
 } else {

  writel_relaxed(0x0, spi_st->base + SSC_IEN);




  readl(spi_st->base + SSC_IEN);
  complete(&spi_st->done);
 }

 return IRQ_HANDLED;
}
