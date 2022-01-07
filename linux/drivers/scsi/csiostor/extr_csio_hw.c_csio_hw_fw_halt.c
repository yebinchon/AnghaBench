
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct csio_mb {int dummy; } ;
struct csio_hw {int mb_mempool; } ;
typedef scalar_t__ int32_t ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 int CIM_BOOT_CFG_A ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int ENOMEM ;
 int FW_RESET_CMD_HALT_F ;
 int GFP_ATOMIC ;
 int PCIE_FW_A ;
 int PCIE_FW_HALT_F ;
 scalar_t__ PCIE_FW_MASTER_M ;
 int PIORSTMODE_F ;
 int PIORST_F ;
 int UPCRST_F ;
 int csio_err (struct csio_hw*,char*) ;
 int csio_mb_fw_retval (struct csio_mb*) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_mb_reset (struct csio_hw*,struct csio_mb*,int ,int,int ,int *) ;
 int csio_set_reg_field (struct csio_hw*,int ,int ,int ) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int n_err_nomem ;

__attribute__((used)) static int
csio_hw_fw_halt(struct csio_hw *hw, uint32_t mbox, int32_t force)
{
 enum fw_retval retval = 0;





 if (mbox <= PCIE_FW_MASTER_M) {
  struct csio_mb *mbp;

  mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
  if (!mbp) {
   CSIO_INC_STATS(hw, n_err_nomem);
   return -ENOMEM;
  }

  csio_mb_reset(hw, mbp, CSIO_MB_DEFAULT_TMO,
         PIORSTMODE_F | PIORST_F, FW_RESET_CMD_HALT_F,
         ((void*)0));

  if (csio_mb_issue(hw, mbp)) {
   csio_err(hw, "Issue of RESET command failed!\n");
   mempool_free(mbp, hw->mb_mempool);
   return -EINVAL;
  }

  retval = csio_mb_fw_retval(mbp);
  mempool_free(mbp, hw->mb_mempool);
 }
 if (retval == 0 || force) {
  csio_set_reg_field(hw, CIM_BOOT_CFG_A, UPCRST_F, UPCRST_F);
  csio_set_reg_field(hw, PCIE_FW_A, PCIE_FW_HALT_F,
       PCIE_FW_HALT_F);
 }





 return retval ? -EINVAL : 0;
}
