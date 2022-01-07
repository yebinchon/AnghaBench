
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efm32_spi_ddata {scalar_t__ rx_len; int lock; int done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_IEN ;
 int REG_IF_RXDATAV ;
 int REG_STATUS ;
 int REG_STATUS_RXDATAV ;
 int complete (int *) ;
 int efm32_spi_read32 (struct efm32_spi_ddata*,int ) ;
 int efm32_spi_rx_u8 (struct efm32_spi_ddata*) ;
 int efm32_spi_write32 (struct efm32_spi_ddata*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t efm32_spi_rxirq(int irq, void *data)
{
 struct efm32_spi_ddata *ddata = data;
 irqreturn_t ret = IRQ_NONE;

 spin_lock(&ddata->lock);

 while (ddata->rx_len > 0 &&
   efm32_spi_read32(ddata, REG_STATUS) &
   REG_STATUS_RXDATAV) {
  efm32_spi_rx_u8(ddata);

  ret = IRQ_HANDLED;
 }

 if (!ddata->rx_len) {
  u32 ien = efm32_spi_read32(ddata, REG_IEN);

  ien &= ~REG_IF_RXDATAV;

  efm32_spi_write32(ddata, ien, REG_IEN);

  complete(&ddata->done);
 }

 spin_unlock(&ddata->lock);

 return ret;
}
