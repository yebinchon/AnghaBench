
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct img_spfi {int tx_dma_busy; int rx_dma_busy; int lock; int rx_ch; int tx_ch; } ;


 int dmaengine_terminate_all (int ) ;
 struct img_spfi* spi_master_get_devdata (struct spi_master*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void img_spfi_handle_err(struct spi_master *master,
    struct spi_message *msg)
{
 struct img_spfi *spfi = spi_master_get_devdata(master);
 unsigned long flags;





 spin_lock_irqsave(&spfi->lock, flags);
 if (spfi->tx_dma_busy || spfi->rx_dma_busy) {
  spfi->tx_dma_busy = 0;
  spfi->rx_dma_busy = 0;

  dmaengine_terminate_all(spfi->tx_ch);
  dmaengine_terminate_all(spfi->rx_ch);
 }
 spin_unlock_irqrestore(&spfi->lock, flags);
}
