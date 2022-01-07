
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct csio_hw {TYPE_1__* chip_ops; } ;
struct TYPE_2__ {int (* chip_pcie_intr_handler ) (struct csio_hw*) ;} ;


 int CIM_F ;
 int CPL_SWITCH_F ;
 int CSIO_GLBL_INTR_MASK ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int EDC0_F ;
 int EDC1_F ;
 int LE_F ;
 int MA_F ;
 int MC_F ;
 int MEM_EDC0 ;
 int MEM_EDC1 ;
 int MEM_MC ;
 int MPS_F ;
 int NCSI_F ;
 int PCIE_F ;
 int PL_F ;
 int PL_INT_CAUSE_A ;
 int PM_RX_F ;
 int PM_TX_F ;
 int SGE_F ;
 int SMB_F ;
 int TP_F ;
 int ULP_RX_F ;
 int ULP_TX_F ;
 int XGMAC0_F ;
 int XGMAC1_F ;
 int XGMAC_KR0_F ;
 int XGMAC_KR1_F ;
 int csio_cim_intr_handler (struct csio_hw*) ;
 int csio_cplsw_intr_handler (struct csio_hw*) ;
 int csio_dbg (struct csio_hw*,char*,int) ;
 int csio_le_intr_handler (struct csio_hw*) ;
 int csio_ma_intr_handler (struct csio_hw*) ;
 int csio_mem_intr_handler (struct csio_hw*,int ) ;
 int csio_mps_intr_handler (struct csio_hw*) ;
 int csio_ncsi_intr_handler (struct csio_hw*) ;
 int csio_pl_intr_handler (struct csio_hw*) ;
 int csio_pmrx_intr_handler (struct csio_hw*) ;
 int csio_pmtx_intr_handler (struct csio_hw*) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_sge_intr_handler (struct csio_hw*) ;
 int csio_smb_intr_handler (struct csio_hw*) ;
 int csio_tp_intr_handler (struct csio_hw*) ;
 int csio_ulprx_intr_handler (struct csio_hw*) ;
 int csio_ulptx_intr_handler (struct csio_hw*) ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;
 int csio_xgmac_intr_handler (struct csio_hw*,int) ;
 int n_plint_cnt ;
 int n_plint_unexp ;
 int stub1 (struct csio_hw*) ;

int
csio_hw_slow_intr_handler(struct csio_hw *hw)
{
 uint32_t cause = csio_rd_reg32(hw, PL_INT_CAUSE_A);

 if (!(cause & CSIO_GLBL_INTR_MASK)) {
  CSIO_INC_STATS(hw, n_plint_unexp);
  return 0;
 }

 csio_dbg(hw, "Slow interrupt! cause: 0x%x\n", cause);

 CSIO_INC_STATS(hw, n_plint_cnt);

 if (cause & CIM_F)
  csio_cim_intr_handler(hw);

 if (cause & MPS_F)
  csio_mps_intr_handler(hw);

 if (cause & NCSI_F)
  csio_ncsi_intr_handler(hw);

 if (cause & PL_F)
  csio_pl_intr_handler(hw);

 if (cause & SMB_F)
  csio_smb_intr_handler(hw);

 if (cause & XGMAC0_F)
  csio_xgmac_intr_handler(hw, 0);

 if (cause & XGMAC1_F)
  csio_xgmac_intr_handler(hw, 1);

 if (cause & XGMAC_KR0_F)
  csio_xgmac_intr_handler(hw, 2);

 if (cause & XGMAC_KR1_F)
  csio_xgmac_intr_handler(hw, 3);

 if (cause & PCIE_F)
  hw->chip_ops->chip_pcie_intr_handler(hw);

 if (cause & MC_F)
  csio_mem_intr_handler(hw, MEM_MC);

 if (cause & EDC0_F)
  csio_mem_intr_handler(hw, MEM_EDC0);

 if (cause & EDC1_F)
  csio_mem_intr_handler(hw, MEM_EDC1);

 if (cause & LE_F)
  csio_le_intr_handler(hw);

 if (cause & TP_F)
  csio_tp_intr_handler(hw);

 if (cause & MA_F)
  csio_ma_intr_handler(hw);

 if (cause & PM_TX_F)
  csio_pmtx_intr_handler(hw);

 if (cause & PM_RX_F)
  csio_pmrx_intr_handler(hw);

 if (cause & ULP_RX_F)
  csio_ulprx_intr_handler(hw);

 if (cause & CPL_SWITCH_F)
  csio_cplsw_intr_handler(hw);

 if (cause & SGE_F)
  csio_sge_intr_handler(hw);

 if (cause & ULP_TX_F)
  csio_ulptx_intr_handler(hw);


 csio_wr_reg32(hw, cause & CSIO_GLBL_INTR_MASK, PL_INT_CAUSE_A);
 csio_rd_reg32(hw, PL_INT_CAUSE_A);

 return 1;
}
