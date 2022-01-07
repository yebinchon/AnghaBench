
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {scalar_t__ fw_state; int flags; } ;


 scalar_t__ CSIO_DEV_STATE_INIT ;
 int CSIO_HWF_USING_SOFT_PARAMS ;
 scalar_t__ csio_is_hw_master (struct csio_hw*) ;
 int csio_wr_fixup_host_params (struct csio_hw*) ;
 int csio_wr_get_sge (struct csio_hw*) ;
 int csio_wr_set_sge (struct csio_hw*) ;

void
csio_wr_sge_init(struct csio_hw *hw)
{
 if (csio_is_hw_master(hw)) {
  if (hw->fw_state != CSIO_DEV_STATE_INIT)
   csio_wr_fixup_host_params(hw);

  if (hw->flags & CSIO_HWF_USING_SOFT_PARAMS)
   csio_wr_get_sge(hw);
  else
   csio_wr_set_sge(hw);
 } else
  csio_wr_get_sge(hw);
}
