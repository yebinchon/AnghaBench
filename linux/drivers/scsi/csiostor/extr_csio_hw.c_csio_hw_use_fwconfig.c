
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u32 ;
struct fw_caps_config_cmd {void* cfvalid_to_len16; void* op_to_write; int cfcsum; int finicsum; int finiver; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int flags; int mb_mempool; int sm; TYPE_1__* chip_ops; int lock; } ;
struct TYPE_2__ {unsigned int (* chip_flash_cfg_addr ) (struct csio_hw*) ;} ;


 int CSIO_HWE_INIT ;
 int CSIO_HWF_USING_SOFT_PARAMS ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_INIT_MBP (struct csio_mb*,struct fw_caps_config_cmd*,int ,struct csio_hw*,int *,int) ;
 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int FW_CAPS_CONFIG_CMD ;
 int FW_CAPS_CONFIG_CMD_CFVALID_F ;
 int FW_CAPS_CONFIG_CMD_MEMADDR64K_CF_V (unsigned int) ;
 int FW_CAPS_CONFIG_CMD_MEMTYPE_CF_V (unsigned int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_caps_config_cmd) ;
 unsigned int FW_MEMTYPE_CF_FLASH ;
 unsigned int FW_PARAMS_PARAM_Y_G (int ) ;
 int FW_PARAMS_PARAM_Z_G (int ) ;
 int FW_SUCCESS ;
 int GFP_ATOMIC ;
 int csio_dbg (struct csio_hw*,char*,int) ;
 int csio_do_reset (struct csio_hw*,int) ;
 int csio_get_device_params (struct csio_hw*) ;
 int csio_hw_flash_config (struct csio_hw*,int *,char*) ;
 int csio_hw_validate_caps (struct csio_hw*,struct csio_mb*) ;
 int csio_info (struct csio_hw*,char*,char*,scalar_t__,scalar_t__) ;
 int csio_mb_fw_retval (struct csio_mb*) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_post_event (int *,int ) ;
 int csio_warn (struct csio_hw*,char*,int,...) ;
 int csio_wr_sge_init (struct csio_hw*) ;
 void* htonl (int) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int n_err_nomem ;
 scalar_t__ ntohl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 unsigned int stub1 (struct csio_hw*) ;

__attribute__((used)) static int
csio_hw_use_fwconfig(struct csio_hw *hw, int reset, u32 *fw_cfg_param)
{
 struct csio_mb *mbp = ((void*)0);
 struct fw_caps_config_cmd *caps_cmd;
 unsigned int mtype, maddr;
 int rv = -EINVAL;
 uint32_t finiver = 0, finicsum = 0, cfcsum = 0;
 char path[64];
 char *config_name = ((void*)0);




 if (reset) {
  rv = csio_do_reset(hw, 1);
  if (rv != 0)
   goto bye;
 }






 spin_unlock_irq(&hw->lock);
 rv = csio_hw_flash_config(hw, fw_cfg_param, path);
 spin_lock_irq(&hw->lock);
 if (rv != 0) {




  config_name = "On FLASH";
  mtype = FW_MEMTYPE_CF_FLASH;
  maddr = hw->chip_ops->chip_flash_cfg_addr(hw);
 } else {
  config_name = path;
  mtype = FW_PARAMS_PARAM_Y_G(*fw_cfg_param);
  maddr = FW_PARAMS_PARAM_Z_G(*fw_cfg_param) << 16;
 }

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  CSIO_INC_STATS(hw, n_err_nomem);
  return -ENOMEM;
 }






 caps_cmd = (struct fw_caps_config_cmd *)(mbp->mb);
 CSIO_INIT_MBP(mbp, caps_cmd, CSIO_MB_DEFAULT_TMO, hw, ((void*)0), 1);
 caps_cmd->op_to_write =
  htonl(FW_CMD_OP_V(FW_CAPS_CONFIG_CMD) |
        FW_CMD_REQUEST_F |
        FW_CMD_READ_F);
 caps_cmd->cfvalid_to_len16 =
  htonl(FW_CAPS_CONFIG_CMD_CFVALID_F |
        FW_CAPS_CONFIG_CMD_MEMTYPE_CF_V(mtype) |
        FW_CAPS_CONFIG_CMD_MEMADDR64K_CF_V(maddr >> 16) |
        FW_LEN16(*caps_cmd));

 if (csio_mb_issue(hw, mbp)) {
  rv = -EINVAL;
  goto bye;
 }

 rv = csio_mb_fw_retval(mbp);






 if (rv == ENOENT) {
  CSIO_INIT_MBP(mbp, caps_cmd, CSIO_MB_DEFAULT_TMO, hw, ((void*)0), 1);
  caps_cmd->op_to_write = htonl(FW_CMD_OP_V(FW_CAPS_CONFIG_CMD) |
           FW_CMD_REQUEST_F |
           FW_CMD_READ_F);
  caps_cmd->cfvalid_to_len16 = htonl(FW_LEN16(*caps_cmd));

  if (csio_mb_issue(hw, mbp)) {
   rv = -EINVAL;
   goto bye;
  }

  rv = csio_mb_fw_retval(mbp);
  config_name = "Firmware Default";
 }
 if (rv != FW_SUCCESS)
  goto bye;

 finiver = ntohl(caps_cmd->finiver);
 finicsum = ntohl(caps_cmd->finicsum);
 cfcsum = ntohl(caps_cmd->cfcsum);




 caps_cmd->op_to_write =
  htonl(FW_CMD_OP_V(FW_CAPS_CONFIG_CMD) |
        FW_CMD_REQUEST_F |
        FW_CMD_WRITE_F);
 caps_cmd->cfvalid_to_len16 = htonl(FW_LEN16(*caps_cmd));

 if (csio_mb_issue(hw, mbp)) {
  rv = -EINVAL;
  goto bye;
 }

 rv = csio_mb_fw_retval(mbp);
 if (rv != FW_SUCCESS) {
  csio_dbg(hw, "FW_CAPS_CONFIG_CMD returned %d!\n", rv);
  goto bye;
 }

 if (finicsum != cfcsum) {
  csio_warn(hw,
        "Config File checksum mismatch: csum=%#x, computed=%#x\n",
        finicsum, cfcsum);
 }


 rv = csio_hw_validate_caps(hw, mbp);
 if (rv != 0)
  goto bye;

 mempool_free(mbp, hw->mb_mempool);
 mbp = ((void*)0);






 hw->flags |= CSIO_HWF_USING_SOFT_PARAMS;


 rv = csio_get_device_params(hw);
 if (rv != 0)
  goto bye;


 csio_wr_sge_init(hw);






 csio_post_event(&hw->sm, CSIO_HWE_INIT);

 csio_info(hw, "Successfully configure using Firmware "
    "Configuration File %s, version %#x, computed checksum %#x\n",
    config_name, finiver, cfcsum);
 return 0;




bye:
 if (mbp)
  mempool_free(mbp, hw->mb_mempool);
 hw->flags &= ~CSIO_HWF_USING_SOFT_PARAMS;
 csio_warn(hw, "Configuration file error %d\n", rv);
 return rv;
}
