
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int flags; int lock; int evtq_work; int pdev; } ;
typedef int irqreturn_t ;


 int CSIO_HWF_FWEVT_PENDING ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int csio_hw_slow_intr_handler (struct csio_hw*) ;
 int csio_mb_isr_handler (struct csio_hw*) ;
 int n_pcich_offline ;
 int pci_channel_offline (int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
csio_nondata_isr(int irq, void *dev_id)
{
 struct csio_hw *hw = (struct csio_hw *) dev_id;
 int rv;
 unsigned long flags;

 if (unlikely(!hw))
  return IRQ_NONE;

 if (unlikely(pci_channel_offline(hw->pdev))) {
  CSIO_INC_STATS(hw, n_pcich_offline);
  return IRQ_NONE;
 }

 spin_lock_irqsave(&hw->lock, flags);
 csio_hw_slow_intr_handler(hw);
 rv = csio_mb_isr_handler(hw);

 if (rv == 0 && !(hw->flags & CSIO_HWF_FWEVT_PENDING)) {
  hw->flags |= CSIO_HWF_FWEVT_PENDING;
  spin_unlock_irqrestore(&hw->lock, flags);
  schedule_work(&hw->evtq_work);
  return IRQ_HANDLED;
 }
 spin_unlock_irqrestore(&hw->lock, flags);
 return IRQ_HANDLED;
}
