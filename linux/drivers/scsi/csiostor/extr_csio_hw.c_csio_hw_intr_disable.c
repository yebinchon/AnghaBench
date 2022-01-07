
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct csio_hw {int flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int CSIO_HWF_HW_INTR_ENABLED ;
 int CSIO_HW_CHIP_MASK ;
 int MYPF_REG (int ) ;
 int PL_INT_MAP0_A ;
 int PL_PF_INT_ENABLE_A ;
 int PL_WHOAMI_A ;
 int SOURCEPF_G (int ) ;
 int T6_SOURCEPF_G (int ) ;
 scalar_t__ csio_is_hw_master (struct csio_hw*) ;
 scalar_t__ csio_is_t5 (int) ;
 int csio_mb_intr_disable (struct csio_hw*) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_set_reg_field (struct csio_hw*,int ,int,int ) ;
 int csio_wr_reg32 (struct csio_hw*,int ,int ) ;

void
csio_hw_intr_disable(struct csio_hw *hw)
{
 u32 pf = 0;

 if (csio_is_t5(hw->pdev->device & CSIO_HW_CHIP_MASK))
  pf = SOURCEPF_G(csio_rd_reg32(hw, PL_WHOAMI_A));
 else
  pf = T6_SOURCEPF_G(csio_rd_reg32(hw, PL_WHOAMI_A));

 if (!(hw->flags & CSIO_HWF_HW_INTR_ENABLED))
  return;

 hw->flags &= ~CSIO_HWF_HW_INTR_ENABLED;

 csio_wr_reg32(hw, 0, MYPF_REG(PL_PF_INT_ENABLE_A));
 if (csio_is_hw_master(hw))
  csio_set_reg_field(hw, PL_INT_MAP0_A, 1 << pf, 0);


 csio_mb_intr_disable(hw);

}
