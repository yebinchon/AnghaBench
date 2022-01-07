
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mb {int dummy; } ;
struct csio_hw {scalar_t__ fw_state; int mb_mempool; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 scalar_t__ CSIO_DEV_STATE_INIT ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int ENOMEM ;
 int FW_SUCCESS ;
 int GFP_ATOMIC ;
 int csio_err (struct csio_hw*,char*,...) ;
 int csio_hw_validate_caps (struct csio_hw*,struct csio_mb*) ;
 int csio_mb_caps_config (struct csio_hw*,struct csio_mb*,int ,int,int,int,int,int *) ;
 int csio_mb_fw_retval (struct csio_mb*) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int n_err_nomem ;

__attribute__((used)) static int
csio_config_device_caps(struct csio_hw *hw)
{
 struct csio_mb *mbp;
 enum fw_retval retval;
 int rv = -EINVAL;

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  CSIO_INC_STATS(hw, n_err_nomem);
  return -ENOMEM;
 }


 csio_mb_caps_config(hw, mbp, CSIO_MB_DEFAULT_TMO, 0, 0, 0, 0, ((void*)0));

 if (csio_mb_issue(hw, mbp)) {
  csio_err(hw, "Issue of FW_CAPS_CONFIG_CMD(r) failed!\n");
  goto out;
 }

 retval = csio_mb_fw_retval(mbp);
 if (retval != FW_SUCCESS) {
  csio_err(hw, "FW_CAPS_CONFIG_CMD(r) returned %d!\n", retval);
  goto out;
 }


 rv = csio_hw_validate_caps(hw, mbp);
 if (rv != 0)
  goto out;


 if (hw->fw_state == CSIO_DEV_STATE_INIT) {
  rv = 0;
  goto out;
 }


 csio_mb_caps_config(hw, mbp, CSIO_MB_DEFAULT_TMO, 1, 1,
       0, 1, ((void*)0));

 if (csio_mb_issue(hw, mbp)) {
  csio_err(hw, "Issue of FW_CAPS_CONFIG_CMD(w) failed!\n");
  goto out;
 }

 retval = csio_mb_fw_retval(mbp);
 if (retval != FW_SUCCESS) {
  csio_err(hw, "FW_CAPS_CONFIG_CMD(w) returned %d!\n", retval);
  goto out;
 }

 rv = 0;
out:
 mempool_free(mbp, hw->mb_mempool);
 return rv;
}
