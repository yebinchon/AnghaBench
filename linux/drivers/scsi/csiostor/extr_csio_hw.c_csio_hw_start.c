
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int lock; int sm; } ;


 int CSIO_HWE_CFG ;
 int EINVAL ;
 int ENODEV ;
 int csio_hws_uninit ;
 scalar_t__ csio_is_hw_ready (struct csio_hw*) ;
 scalar_t__ csio_match_state (struct csio_hw*,int ) ;
 int csio_post_event (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
csio_hw_start(struct csio_hw *hw)
{
 spin_lock_irq(&hw->lock);
 csio_post_event(&hw->sm, CSIO_HWE_CFG);
 spin_unlock_irq(&hw->lock);

 if (csio_is_hw_ready(hw))
  return 0;
 else if (csio_match_state(hw, csio_hws_uninit))
  return -EINVAL;
 else
  return -ENODEV;
}
