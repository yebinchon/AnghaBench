
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_hw {int flags; int lock; } ;


 int CSIO_DB_ASSERT (int) ;
 int CSIO_HWF_FWEVT_PENDING ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
csio_evtq_flush(struct csio_hw *hw)
{
 uint32_t count;
 count = 30;
 while (hw->flags & CSIO_HWF_FWEVT_PENDING && count--) {
  spin_unlock_irq(&hw->lock);
  msleep(2000);
  spin_lock_irq(&hw->lock);
 }

 CSIO_DB_ASSERT(!(hw->flags & CSIO_HWF_FWEVT_PENDING));
}
