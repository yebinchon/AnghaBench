
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_mb {int dummy; } ;
struct csio_hw {scalar_t__ fw_state; int num_pports; int mb_mempool; int sm; TYPE_1__* pport; int lock; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
struct TYPE_2__ {int mod_type; } ;


 scalar_t__ CSIO_DEV_STATE_INIT ;
 int CSIO_HWE_INIT_DONE ;
 int CSIO_MB_DEFAULT_TMO ;
 int FW_PORT_MOD_TYPE_NA ;
 int FW_SUCCESS ;
 int GFP_ATOMIC ;
 int csio_config_queues (struct csio_hw*) ;
 int csio_enable_ports (struct csio_hw*) ;
 int csio_err (struct csio_hw*,char*,...) ;
 int csio_get_fcoe_resinfo (struct csio_hw*) ;
 scalar_t__ csio_is_hw_master (struct csio_hw*) ;
 int csio_mb_fw_retval (struct csio_mb*) ;
 int csio_mb_initialize (struct csio_hw*,struct csio_mb*,int ,int *) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_post_event (int *,int ) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_hw_initialize(struct csio_hw *hw)
{
 struct csio_mb *mbp;
 enum fw_retval retval;
 int rv;
 int i;

 if (csio_is_hw_master(hw) && hw->fw_state != CSIO_DEV_STATE_INIT) {
  mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
  if (!mbp)
   goto out;

  csio_mb_initialize(hw, mbp, CSIO_MB_DEFAULT_TMO, ((void*)0));

  if (csio_mb_issue(hw, mbp)) {
   csio_err(hw, "Issue of FW_INITIALIZE_CMD failed!\n");
   goto free_and_out;
  }

  retval = csio_mb_fw_retval(mbp);
  if (retval != FW_SUCCESS) {
   csio_err(hw, "FW_INITIALIZE_CMD returned 0x%x!\n",
     retval);
   goto free_and_out;
  }

  mempool_free(mbp, hw->mb_mempool);
 }

 rv = csio_get_fcoe_resinfo(hw);
 if (rv != 0) {
  csio_err(hw, "Failed to read fcoe resource info: %d\n", rv);
  goto out;
 }

 spin_unlock_irq(&hw->lock);
 rv = csio_config_queues(hw);
 spin_lock_irq(&hw->lock);

 if (rv != 0) {
  csio_err(hw, "Config of queues failed!: %d\n", rv);
  goto out;
 }

 for (i = 0; i < hw->num_pports; i++)
  hw->pport[i].mod_type = FW_PORT_MOD_TYPE_NA;

 if (csio_is_hw_master(hw) && hw->fw_state != CSIO_DEV_STATE_INIT) {
  rv = csio_enable_ports(hw);
  if (rv != 0) {
   csio_err(hw, "Failed to enable ports: %d\n", rv);
   goto out;
  }
 }

 csio_post_event(&hw->sm, CSIO_HWE_INIT_DONE);
 return;

free_and_out:
 mempool_free(mbp, hw->mb_mempool);
out:
 return;
}
