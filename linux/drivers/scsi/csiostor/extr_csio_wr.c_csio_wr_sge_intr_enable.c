
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct csio_hw {int dummy; } ;


 int CIDXINC_V (int ) ;
 int INGRESSQID_V (int ) ;
 int MYPF_REG (int ) ;
 int SGE_PF_GTS_A ;
 int TIMERREG_V (int ) ;
 int X_TIMERREG_RESTART_COUNTER ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;

__attribute__((used)) static void
csio_wr_sge_intr_enable(struct csio_hw *hw, uint16_t iqid)
{
 csio_wr_reg32(hw, CIDXINC_V(0) |
     INGRESSQID_V(iqid) |
     TIMERREG_V(X_TIMERREG_RESTART_COUNTER),
     MYPF_REG(SGE_PF_GTS_A));
}
