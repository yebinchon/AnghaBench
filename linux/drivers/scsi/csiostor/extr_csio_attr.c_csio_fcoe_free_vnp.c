
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_fcoe_vnp_cmd {int alloc_to_len16; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_lnode {int vnp_flowid; int fcf_flowid; } ;
struct csio_hw {int lock; int mb_mempool; } ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_MB_DEFAULT_TMO ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ FW_CMD_RETVAL_G (int ) ;
 scalar_t__ FW_SUCCESS ;
 int GFP_ATOMIC ;
 int csio_fcoe_vnp_free_init_mb (struct csio_lnode*,struct csio_mb*,int ,int ,int ,int *) ;
 int csio_ln_err (struct csio_lnode*,char*,...) ;
 int csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int msleep (int) ;
 int n_err_nomem ;
 int ntohl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
csio_fcoe_free_vnp(struct csio_hw *hw, struct csio_lnode *ln)
{
 struct csio_mb *mbp;
 struct fw_fcoe_vnp_cmd *rsp;
 int ret = 0;
 int retry = 0;




 spin_lock_irq(&hw->lock);
 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  CSIO_INC_STATS(hw, n_err_nomem);
  ret = -ENOMEM;
  goto out;
 }

 csio_fcoe_vnp_free_init_mb(ln, mbp, CSIO_MB_DEFAULT_TMO,
       ln->fcf_flowid, ln->vnp_flowid,
       ((void*)0));

 for (retry = 0; retry < 3; retry++) {
  ret = csio_mb_issue(hw, mbp);
  if (ret != -EBUSY)
   break;


  spin_unlock_irq(&hw->lock);
  msleep(2000);
  spin_lock_irq(&hw->lock);
 }

 if (ret) {
  csio_ln_err(ln, "Failed to issue mbox FCoE VNP command\n");
  goto out_free;
 }


 rsp = (struct fw_fcoe_vnp_cmd *)(mbp->mb);
 if (FW_CMD_RETVAL_G(ntohl(rsp->alloc_to_len16)) != FW_SUCCESS) {
  csio_ln_err(ln, "FCOE VNP FREE cmd returned 0x%x!\n",
       FW_CMD_RETVAL_G(ntohl(rsp->alloc_to_len16)));
  ret = -EINVAL;
 }

out_free:
 mempool_free(mbp, hw->mb_mempool);
out:
 spin_unlock_irq(&hw->lock);
 return ret;
}
