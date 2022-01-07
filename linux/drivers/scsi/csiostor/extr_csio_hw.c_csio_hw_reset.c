
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_reset_start; } ;
struct csio_hw {scalar_t__ rst_retries; TYPE_1__ stats; int sm; } ;


 int CSIO_HWE_HBA_RESET ;
 scalar_t__ CSIO_MAX_RESET_RETRIES ;
 int EINVAL ;
 int EPERM ;
 int csio_dbg (struct csio_hw*,char*) ;
 int csio_is_hw_master (struct csio_hw*) ;
 scalar_t__ csio_is_hw_ready (struct csio_hw*) ;
 int csio_post_event (int *,int ) ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;

int
csio_hw_reset(struct csio_hw *hw)
{
 if (!csio_is_hw_master(hw))
  return -EPERM;

 if (hw->rst_retries >= CSIO_MAX_RESET_RETRIES) {
  csio_dbg(hw, "Max hw reset attempts reached..");
  return -EINVAL;
 }

 hw->rst_retries++;
 csio_post_event(&hw->sm, CSIO_HWE_HBA_RESET);

 if (csio_is_hw_ready(hw)) {
  hw->rst_retries = 0;
  hw->stats.n_reset_start = jiffies_to_msecs(jiffies);
  return 0;
 } else
  return -EINVAL;
}
