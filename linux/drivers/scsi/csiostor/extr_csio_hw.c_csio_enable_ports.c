
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct csio_mb {int dummy; } ;
struct csio_hw {int num_pports; int mb_mempool; TYPE_1__* pport; int pfn; } ;
typedef int fw_port_cap32_t ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
struct TYPE_2__ {int link_cfg; int portid; } ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ FW_CAPS16 ;
 scalar_t__ FW_CAPS32 ;
 scalar_t__ FW_CAPS_UNKNOWN ;
 int FW_PARAMS_MNEM_PFVF ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_PFVF_PORT_CAPS32 ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int FW_SUCCESS ;
 int GFP_ATOMIC ;
 int csio_err (struct csio_hw*,char*,int ,...) ;
 int csio_init_link_config (int *,int ,int ) ;
 int csio_link_l1cfg (int *,scalar_t__,int *) ;
 int csio_mb_fw_retval (struct csio_mb*) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_mb_params (struct csio_hw*,struct csio_mb*,int ,int ,int ,int,int*,int*,int,int *) ;
 int csio_mb_port (struct csio_hw*,struct csio_mb*,int ,int ,int,int ,scalar_t__,int *) ;
 int csio_mb_process_read_params_rsp (struct csio_hw*,struct csio_mb*,int*,int ,int *) ;
 int csio_mb_process_read_port_rsp (struct csio_hw*,struct csio_mb*,int*,scalar_t__,int *,int *) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int n_err_nomem ;

__attribute__((used)) static int
csio_enable_ports(struct csio_hw *hw)
{
 struct csio_mb *mbp;
 u16 fw_caps = FW_CAPS_UNKNOWN;
 enum fw_retval retval;
 uint8_t portid;
 fw_port_cap32_t pcaps, acaps, rcaps;
 int i;

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  CSIO_INC_STATS(hw, n_err_nomem);
  return -ENOMEM;
 }

 for (i = 0; i < hw->num_pports; i++) {
  portid = hw->pport[i].portid;

  if (fw_caps == FW_CAPS_UNKNOWN) {
   u32 param, val;

   param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_PFVF) |
    FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_PFVF_PORT_CAPS32));
   val = 1;

   csio_mb_params(hw, mbp, CSIO_MB_DEFAULT_TMO,
           hw->pfn, 0, 1, &param, &val, 1,
           ((void*)0));

   if (csio_mb_issue(hw, mbp)) {
    csio_err(hw, "failed to issue FW_PARAMS_CMD(r) port:%d\n",
      portid);
    mempool_free(mbp, hw->mb_mempool);
    return -EINVAL;
   }

   csio_mb_process_read_params_rsp(hw, mbp, &retval,
       0, ((void*)0));
   fw_caps = retval ? FW_CAPS16 : FW_CAPS32;
  }


  csio_mb_port(hw, mbp, CSIO_MB_DEFAULT_TMO, portid,
        0, 0, fw_caps, ((void*)0));

  if (csio_mb_issue(hw, mbp)) {
   csio_err(hw, "failed to issue FW_PORT_CMD(r) port:%d\n",
     portid);
   mempool_free(mbp, hw->mb_mempool);
   return -EINVAL;
  }

  csio_mb_process_read_port_rsp(hw, mbp, &retval, fw_caps,
           &pcaps, &acaps);
  if (retval != FW_SUCCESS) {
   csio_err(hw, "FW_PORT_CMD(r) port:%d failed: 0x%x\n",
     portid, retval);
   mempool_free(mbp, hw->mb_mempool);
   return -EINVAL;
  }

  csio_init_link_config(&hw->pport[i].link_cfg, pcaps, acaps);

  csio_link_l1cfg(&hw->pport[i].link_cfg, fw_caps, &rcaps);


  csio_mb_port(hw, mbp, CSIO_MB_DEFAULT_TMO, portid,
        1, rcaps, fw_caps, ((void*)0));

  if (csio_mb_issue(hw, mbp)) {
   csio_err(hw, "failed to issue FW_PORT_CMD(w) port:%d\n",
     portid);
   mempool_free(mbp, hw->mb_mempool);
   return -EINVAL;
  }

  retval = csio_mb_fw_retval(mbp);
  if (retval != FW_SUCCESS) {
   csio_err(hw, "FW_PORT_CMD(w) port:%d failed :0x%x\n",
     portid, retval);
   mempool_free(mbp, hw->mb_mempool);
   return -EINVAL;
  }

 }

 mempool_free(mbp, hw->mb_mempool);

 return 0;
}
