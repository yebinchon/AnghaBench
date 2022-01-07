
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_spfi {int tx_dma_busy; int lock; int master; int rx_dma_busy; } ;


 int spfi_wait_all_done (struct img_spfi*) ;
 int spi_finalize_current_transfer (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void img_spfi_dma_tx_cb(void *data)
{
 struct img_spfi *spfi = data;
 unsigned long flags;

 spfi_wait_all_done(spfi);

 spin_lock_irqsave(&spfi->lock, flags);
 spfi->tx_dma_busy = 0;
 if (!spfi->rx_dma_busy)
  spi_finalize_current_transfer(spfi->master);
 spin_unlock_irqrestore(&spfi->lock, flags);
}
