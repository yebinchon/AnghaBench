
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int fwevt_iq_idx; } ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 scalar_t__ CSIO_MAX_QID ;
 int EINVAL ;
 int csio_process_fwevtq_entry ;
 scalar_t__ csio_q_iqid (struct csio_hw*,int ) ;
 int csio_wr_process_iq_idx (struct csio_hw*,int ,int ,int *) ;
 int n_int_stray ;

int
csio_fwevtq_handler(struct csio_hw *hw)
{
 int rv;

 if (csio_q_iqid(hw, hw->fwevt_iq_idx) == CSIO_MAX_QID) {
  CSIO_INC_STATS(hw, n_int_stray);
  return -EINVAL;
 }

 rv = csio_wr_process_iq_idx(hw, hw->fwevt_iq_idx,
      csio_process_fwevtq_entry, ((void*)0));
 return rv;
}
