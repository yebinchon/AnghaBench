
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mb {int dummy; } ;
struct csio_hw {int mb_mempool; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int ENOMEM ;
 int FW_SUCCESS ;
 int GFP_ATOMIC ;
 int PIORSTMODE_F ;
 int PIORST_F ;
 int PL_RST_A ;
 int csio_err (struct csio_hw*,char*,...) ;
 int csio_mb_fw_retval (struct csio_mb*) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_mb_reset (struct csio_hw*,struct csio_mb*,int ,int,int ,int *) ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;
 int mdelay (int) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int n_err_nomem ;

__attribute__((used)) static int
csio_do_reset(struct csio_hw *hw, bool fw_rst)
{
 struct csio_mb *mbp;
 enum fw_retval retval;

 if (!fw_rst) {

  csio_wr_reg32(hw, PIORSTMODE_F | PIORST_F, PL_RST_A);
  mdelay(2000);
  return 0;
 }

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  CSIO_INC_STATS(hw, n_err_nomem);
  return -ENOMEM;
 }

 csio_mb_reset(hw, mbp, CSIO_MB_DEFAULT_TMO,
        PIORSTMODE_F | PIORST_F, 0, ((void*)0));

 if (csio_mb_issue(hw, mbp)) {
  csio_err(hw, "Issue of RESET command failed.n");
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 retval = csio_mb_fw_retval(mbp);
 if (retval != FW_SUCCESS) {
  csio_err(hw, "RESET cmd failed with ret:0x%x.\n", retval);
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 mempool_free(mbp, hw->mb_mempool);

 return 0;
}
