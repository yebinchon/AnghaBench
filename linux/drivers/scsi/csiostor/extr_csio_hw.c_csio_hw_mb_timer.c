
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct csio_mbm {struct csio_hw* hw; } ;
struct csio_mb {int (* mb_cbfn ) (struct csio_hw*,struct csio_mb*) ;} ;
struct csio_hw {int lock; } ;


 struct csio_mb* csio_mb_tmo_handler (struct csio_hw*) ;
 struct csio_mbm* from_timer (int ,struct timer_list*,int ) ;
 struct csio_mbm* mbm ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct csio_hw*,struct csio_mb*) ;
 int timer ;

__attribute__((used)) static void
csio_hw_mb_timer(struct timer_list *t)
{
 struct csio_mbm *mbm = from_timer(mbm, t, timer);
 struct csio_hw *hw = mbm->hw;
 struct csio_mb *mbp = ((void*)0);

 spin_lock_irq(&hw->lock);
 mbp = csio_mb_tmo_handler(hw);
 spin_unlock_irq(&hw->lock);


 if (mbp)
  mbp->mb_cbfn(hw, mbp);

}
