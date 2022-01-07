
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int lock; } ;


 int LIST_HEAD (int ) ;
 int cbfn_q ;
 int csio_mb_cancel_all (struct csio_hw*,int *) ;
 int csio_mb_completions (struct csio_hw*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_hw_mbm_cleanup(struct csio_hw *hw)
{
 LIST_HEAD(cbfn_q);

 csio_mb_cancel_all(hw, &cbfn_q);

 spin_unlock_irq(&hw->lock);
 csio_mb_completions(hw, &cbfn_q);
 spin_lock_irq(&hw->lock);
}
