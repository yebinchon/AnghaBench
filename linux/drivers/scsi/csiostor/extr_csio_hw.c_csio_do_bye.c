
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
 int csio_err (struct csio_hw*,char*) ;
 int csio_mb_bye (struct csio_hw*,struct csio_mb*,int ,int *) ;
 int csio_mb_fw_retval (struct csio_mb*) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int n_err_nomem ;

__attribute__((used)) static int
csio_do_bye(struct csio_hw *hw)
{
 struct csio_mb *mbp;
 enum fw_retval retval;

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  CSIO_INC_STATS(hw, n_err_nomem);
  return -ENOMEM;
 }

 csio_mb_bye(hw, mbp, CSIO_MB_DEFAULT_TMO, ((void*)0));

 if (csio_mb_issue(hw, mbp)) {
  csio_err(hw, "Issue of BYE command failed\n");
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 retval = csio_mb_fw_retval(mbp);
 if (retval != FW_SUCCESS) {
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 mempool_free(mbp, hw->mb_mempool);

 return 0;
}
