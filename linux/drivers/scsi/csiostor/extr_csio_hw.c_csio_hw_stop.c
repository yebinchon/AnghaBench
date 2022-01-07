
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int sm; } ;


 int CSIO_HWE_PCI_REMOVE ;
 int EINVAL ;
 scalar_t__ csio_is_hw_removing (struct csio_hw*) ;
 int csio_post_event (int *,int ) ;

int
csio_hw_stop(struct csio_hw *hw)
{
 csio_post_event(&hw->sm, CSIO_HWE_PCI_REMOVE);

 if (csio_is_hw_removing(hw))
  return 0;
 else
  return -EINVAL;
}
