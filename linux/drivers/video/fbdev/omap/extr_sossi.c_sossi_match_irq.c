
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int lock; scalar_t__ vsync_dma_pending; } ;


 int IRQ_HANDLED ;
 int omap_enable_lcd_dma () ;
 TYPE_1__ sossi ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t sossi_match_irq(int irq, void *data)
{
 unsigned long flags;

 spin_lock_irqsave(&sossi.lock, flags);
 if (sossi.vsync_dma_pending) {
  sossi.vsync_dma_pending--;
  omap_enable_lcd_dma();
 }
 spin_unlock_irqrestore(&sossi.lock, flags);
 return IRQ_HANDLED;
}
