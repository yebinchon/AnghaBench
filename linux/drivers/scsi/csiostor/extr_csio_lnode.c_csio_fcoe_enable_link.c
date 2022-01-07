
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct fw_fcoe_link_cmd {int phy_mac; int vnport_wwpn; int vnport_wwnn; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_lnode {scalar_t__ portid; struct csio_hw* hwp; } ;
struct csio_hw {int mb_mempool; TYPE_1__* pport; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
struct TYPE_2__ {scalar_t__ portid; int mac; } ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_MAX_PPORTS ;
 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ FCOE_LINK_DOWN ;
 scalar_t__ FCOE_LINK_UP ;
 int FW_SUCCESS ;
 int GFP_ATOMIC ;
 int csio_dbg (struct csio_hw*,char*,char*,scalar_t__) ;
 int csio_err (struct csio_hw*,char*,char*,...) ;
 int csio_ln_wwnn (struct csio_lnode*) ;
 int csio_ln_wwpn (struct csio_lnode*) ;
 int csio_mb_fw_retval (struct csio_mb*) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_write_fcoe_link_cond_init_mb (struct csio_lnode*,struct csio_mb*,int ,scalar_t__,scalar_t__,int ,int ,int ,int *) ;
 int memcpy (int ,int ,int) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int n_err_nomem ;

__attribute__((used)) static int
csio_fcoe_enable_link(struct csio_lnode *ln, bool enable)
{
 struct csio_hw *hw = ln->hwp;
 struct csio_mb *mbp;
 enum fw_retval retval;
 uint8_t portid;
 uint8_t sub_op;
 struct fw_fcoe_link_cmd *lcmd;
 int i;

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  CSIO_INC_STATS(hw, n_err_nomem);
  return -ENOMEM;
 }

 portid = ln->portid;
 sub_op = enable ? FCOE_LINK_UP : FCOE_LINK_DOWN;

 csio_dbg(hw, "bringing FCOE LINK %s on Port:%d\n",
   sub_op ? "UP" : "DOWN", portid);

 csio_write_fcoe_link_cond_init_mb(ln, mbp, CSIO_MB_DEFAULT_TMO,
       portid, sub_op, 0, 0, 0, ((void*)0));

 if (csio_mb_issue(hw, mbp)) {
  csio_err(hw, "failed to issue FCOE LINK cmd on port[%d]\n",
   portid);
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 retval = csio_mb_fw_retval(mbp);
 if (retval != FW_SUCCESS) {
  csio_err(hw,
    "FCOE LINK %s cmd on port[%d] failed with "
    "ret:x%x\n", sub_op ? "UP" : "DOWN", portid, retval);
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 if (!enable)
  goto out;

 lcmd = (struct fw_fcoe_link_cmd *)mbp->mb;

 memcpy(csio_ln_wwnn(ln), lcmd->vnport_wwnn, 8);
 memcpy(csio_ln_wwpn(ln), lcmd->vnport_wwpn, 8);

 for (i = 0; i < CSIO_MAX_PPORTS; i++)
  if (hw->pport[i].portid == portid)
   memcpy(hw->pport[i].mac, lcmd->phy_mac, 6);

out:
 mempool_free(mbp, hw->mb_mempool);
 return 0;
}
