
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int flags; } ;


 int CSIO_HWF_FWEVT_STOP ;

__attribute__((used)) static void
csio_evtq_start(struct csio_hw *hw)
{
 hw->flags &= ~CSIO_HWF_FWEVT_STOP;
}
