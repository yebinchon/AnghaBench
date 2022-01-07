
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct csio_hw {int dummy; } ;
typedef scalar_t__ int32_t ;


 int CIM_BOOT_CFG_A ;
 int ETIMEDOUT ;
 int FW_CMD_MAX_TIMEOUT ;
 int PCIE_FW_A ;
 int PCIE_FW_HALT_F ;
 scalar_t__ PCIE_FW_MASTER_M ;
 int PIORSTMODE_F ;
 int PIORST_F ;
 int PL_RST_A ;
 int UPCRST_F ;
 scalar_t__ csio_do_reset (struct csio_hw*,int) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_set_reg_field (struct csio_hw*,int ,int,int ) ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;
 int msleep (int) ;

__attribute__((used)) static int
csio_hw_fw_restart(struct csio_hw *hw, uint32_t mbox, int32_t reset)
{
 if (reset) {





  csio_set_reg_field(hw, PCIE_FW_A, PCIE_FW_HALT_F, 0);
  if (mbox <= PCIE_FW_MASTER_M) {
   csio_set_reg_field(hw, CIM_BOOT_CFG_A, UPCRST_F, 0);
   msleep(100);
   if (csio_do_reset(hw, 1) == 0)
    return 0;
  }

  csio_wr_reg32(hw, PIORSTMODE_F | PIORST_F, PL_RST_A);
  msleep(2000);
 } else {
  int ms;

  csio_set_reg_field(hw, CIM_BOOT_CFG_A, UPCRST_F, 0);
  for (ms = 0; ms < FW_CMD_MAX_TIMEOUT; ) {
   if (!(csio_rd_reg32(hw, PCIE_FW_A) & PCIE_FW_HALT_F))
    return 0;
   msleep(100);
   ms += 100;
  }
  return -ETIMEDOUT;
 }
 return 0;
}
