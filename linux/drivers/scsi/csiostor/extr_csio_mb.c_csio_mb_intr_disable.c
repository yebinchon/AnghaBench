
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int dummy; } ;


 int CIM_PF_HOST_INT_ENABLE_A ;
 int MBMSGRDYINTEN_V (int ) ;
 int MYPF_REG (int ) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_wr_reg32 (struct csio_hw*,int ,int ) ;

void
csio_mb_intr_disable(struct csio_hw *hw)
{
 csio_wr_reg32(hw, MBMSGRDYINTEN_V(0),
        MYPF_REG(CIM_PF_HOST_INT_ENABLE_A));
 csio_rd_reg32(hw, MYPF_REG(CIM_PF_HOST_INT_ENABLE_A));
}
