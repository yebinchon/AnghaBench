
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct csio_mb {int dummy; } ;
struct csio_hw {int mb_mempool; int pfn; int flags; int lock; } ;
typedef int state_str ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
typedef enum csio_dev_state { ____Placeholder_csio_dev_state } csio_dev_state ;





 int CSIO_HWF_MASTER ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_MASTER_MAY ;
 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int FW_CMD_HELLO_RETRIES ;
 int FW_CMD_HELLO_TIMEOUT ;
 int FW_SUCCESS ;
 int GFP_ATOMIC ;
 int PCIE_FW_A ;
 int PCIE_FW_ERR_F ;
 int PCIE_FW_INIT_F ;
 int PCIE_FW_MASTER_G (int) ;
 int PCIE_FW_MASTER_M ;
 int PCIE_FW_MASTER_VLD_F ;
 int csio_err (struct csio_hw*,char*,int) ;
 int csio_info (struct csio_hw*,char*,int ,char*,...) ;
 int csio_mb_hello (struct csio_hw*,struct csio_mb*,int ,int ,int ,int ,int *) ;
 int csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_mb_process_hello_rsp (struct csio_hw*,struct csio_mb*,int*,int*,int *) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int memset (char*,int ,int) ;
 int msleep (int) ;
 int n_err_nomem ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int
csio_do_hello(struct csio_hw *hw, enum csio_dev_state *state)
{
 struct csio_mb *mbp;
 int rv = 0;
 enum fw_retval retval;
 uint8_t mpfn;
 char state_str[16];
 int retries = FW_CMD_HELLO_RETRIES;

 memset(state_str, 0, sizeof(state_str));

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  rv = -ENOMEM;
  CSIO_INC_STATS(hw, n_err_nomem);
  goto out;
 }

retry:
 csio_mb_hello(hw, mbp, CSIO_MB_DEFAULT_TMO, hw->pfn,
        hw->pfn, CSIO_MASTER_MAY, ((void*)0));

 rv = csio_mb_issue(hw, mbp);
 if (rv) {
  csio_err(hw, "failed to issue HELLO cmd. ret:%d.\n", rv);
  goto out_free_mb;
 }

 csio_mb_process_hello_rsp(hw, mbp, &retval, state, &mpfn);
 if (retval != FW_SUCCESS) {
  csio_err(hw, "HELLO cmd failed with ret: %d\n", retval);
  rv = -EINVAL;
  goto out_free_mb;
 }


 if (hw->pfn == mpfn) {
  hw->flags |= CSIO_HWF_MASTER;
 } else if (*state == 128) {
  int waiting = FW_CMD_HELLO_TIMEOUT;
  for (;;) {
   uint32_t pcie_fw;

   spin_unlock_irq(&hw->lock);
   msleep(50);
   spin_lock_irq(&hw->lock);
   waiting -= 50;







   pcie_fw = csio_rd_reg32(hw, PCIE_FW_A);
   if (!(pcie_fw & (PCIE_FW_ERR_F|PCIE_FW_INIT_F))) {
    if (waiting <= 0) {
     if (retries-- > 0)
      goto retry;

     rv = -ETIMEDOUT;
     break;
    }
    continue;
   }





   if (state) {
    if (pcie_fw & PCIE_FW_ERR_F) {
     *state = 130;
     rv = -ETIMEDOUT;
    } else if (pcie_fw & PCIE_FW_INIT_F)
     *state = 129;
   }






   if (mpfn == PCIE_FW_MASTER_M &&
       (pcie_fw & PCIE_FW_MASTER_VLD_F))
    mpfn = PCIE_FW_MASTER_G(pcie_fw);
   break;
  }
  hw->flags &= ~CSIO_HWF_MASTER;
 }

 switch (*state) {
 case 128:
  strcpy(state_str, "Initializing");
  break;
 case 129:
  strcpy(state_str, "Initialized");
  break;
 case 130:
  strcpy(state_str, "Error");
  break;
 default:
  strcpy(state_str, "Unknown");
  break;
 }

 if (hw->pfn == mpfn)
  csio_info(hw, "PF: %d, Coming up as MASTER, HW state: %s\n",
   hw->pfn, state_str);
 else
  csio_info(hw,
      "PF: %d, Coming up as SLAVE, Master PF: %d, HW state: %s\n",
      hw->pfn, mpfn, state_str);

out_free_mb:
 mempool_free(mbp, hw->mb_mempool);
out:
 return rv;
}
