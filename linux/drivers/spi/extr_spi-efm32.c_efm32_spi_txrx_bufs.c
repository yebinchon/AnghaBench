
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int bits_per_word; int * rx_buf; int tx_buf; } ;
struct spi_device {int master; } ;
struct efm32_spi_ddata {int tx_len; int rx_len; int lock; int * rx_buf; int tx_buf; int done; } ;


 int DIV_ROUND_UP (int ,int) ;
 int EBUSY ;
 int REG_IEN ;
 int REG_IF_RXDATAV ;
 int REG_IF_TXBL ;
 int efm32_spi_filltx (struct efm32_spi_ddata*) ;
 int efm32_spi_write32 (struct efm32_spi_ddata*,int,int ) ;
 int max (int,int) ;
 int reinit_completion (int *) ;
 struct efm32_spi_ddata* spi_master_get_devdata (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int efm32_spi_txrx_bufs(struct spi_device *spi, struct spi_transfer *t)
{
 struct efm32_spi_ddata *ddata = spi_master_get_devdata(spi->master);
 int ret = -EBUSY;

 spin_lock_irq(&ddata->lock);

 if (ddata->tx_buf || ddata->rx_buf)
  goto out_unlock;

 ddata->tx_buf = t->tx_buf;
 ddata->rx_buf = t->rx_buf;
 ddata->tx_len = ddata->rx_len =
  t->len * DIV_ROUND_UP(t->bits_per_word, 8);

 efm32_spi_filltx(ddata);

 reinit_completion(&ddata->done);

 efm32_spi_write32(ddata, REG_IF_TXBL | REG_IF_RXDATAV, REG_IEN);

 spin_unlock_irq(&ddata->lock);

 wait_for_completion(&ddata->done);

 spin_lock_irq(&ddata->lock);

 ret = t->len - max(ddata->tx_len, ddata->rx_len);

 efm32_spi_write32(ddata, 0, REG_IEN);
 ddata->tx_buf = ddata->rx_buf = ((void*)0);

out_unlock:
 spin_unlock_irq(&ddata->lock);

 return ret;
}
