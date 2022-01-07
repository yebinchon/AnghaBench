
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int flags; int lock; int evtq_work; } ;


 int CSIO_HWF_FWEVT_PENDING ;
 int csio_fwevtq_handler (struct csio_hw*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
csio_fwevt_handler(struct csio_hw *hw)
{
 int rv;
 unsigned long flags;

 rv = csio_fwevtq_handler(hw);

 spin_lock_irqsave(&hw->lock, flags);
 if (rv == 0 && !(hw->flags & CSIO_HWF_FWEVT_PENDING)) {
  hw->flags |= CSIO_HWF_FWEVT_PENDING;
  spin_unlock_irqrestore(&hw->lock, flags);
  schedule_work(&hw->evtq_work);
  return;
 }
 spin_unlock_irqrestore(&hw->lock, flags);

}
