
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ptag_state; int * mcc_tag_status; int * mcc_wait; } ;
struct beiscsi_hba {TYPE_2__ ctrl; int state; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {scalar_t__ size; int dma; int va; } ;
struct TYPE_3__ {int tag_state; struct be_dma_mem tag_mem_state; } ;


 int BEISCSI_HBA_ONLINE ;
 int BEISCSI_HOST_MBX_TIMEOUT ;
 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_EH ;
 int BEISCSI_LOG_INIT ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int KERN_ERR ;
 unsigned int MAX_MCC_CMD ;
 int MCC_TAG_STATE_RUNNING ;
 int MCC_TAG_STATE_TIMEOUT ;
 int __beiscsi_log (struct beiscsi_hba*,int ,char*,unsigned int) ;
 int __beiscsi_mcc_compl_status (struct beiscsi_hba*,unsigned int,struct be_mcc_wrb**,struct be_dma_mem*) ;
 scalar_t__ beiscsi_hba_in_error (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*) ;
 int clear_bit (int ,int *) ;
 int free_mcc_wrb (TYPE_2__*,unsigned int) ;
 int msecs_to_jiffies (int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;
 int wmb () ;

int beiscsi_mccq_compl_wait(struct beiscsi_hba *phba,
       unsigned int tag,
       struct be_mcc_wrb **wrb,
       struct be_dma_mem *mbx_cmd_mem)
{
 int rc = 0;

 if (!tag || tag > MAX_MCC_CMD) {
  __beiscsi_log(phba, KERN_ERR,
         "BC_%d : invalid tag %u\n", tag);
  return -EINVAL;
 }

 if (beiscsi_hba_in_error(phba)) {
  clear_bit(MCC_TAG_STATE_RUNNING,
     &phba->ctrl.ptag_state[tag].tag_state);
  return -EIO;
 }


 rc = wait_event_interruptible_timeout(phba->ctrl.mcc_wait[tag],
           phba->ctrl.mcc_tag_status[tag],
           msecs_to_jiffies(
      BEISCSI_HOST_MBX_TIMEOUT));





 if (!test_bit(BEISCSI_HBA_ONLINE, &phba->state)) {
  clear_bit(MCC_TAG_STATE_RUNNING,
     &phba->ctrl.ptag_state[tag].tag_state);
  return -EIO;
 }





 if (rc <= 0) {
  struct be_dma_mem *tag_mem;







  tag_mem = &phba->ctrl.ptag_state[tag].tag_mem_state;
  if (mbx_cmd_mem) {
   tag_mem->size = mbx_cmd_mem->size;
   tag_mem->va = mbx_cmd_mem->va;
   tag_mem->dma = mbx_cmd_mem->dma;
  } else
   tag_mem->size = 0;


  wmb();
  set_bit(MCC_TAG_STATE_TIMEOUT,
    &phba->ctrl.ptag_state[tag].tag_state);

  beiscsi_log(phba, KERN_ERR,
       BEISCSI_LOG_INIT | BEISCSI_LOG_EH |
       BEISCSI_LOG_CONFIG,
       "BC_%d : MBX Cmd Completion timed out\n");
  return -EBUSY;
 }

 rc = __beiscsi_mcc_compl_status(phba, tag, wrb, mbx_cmd_mem);

 free_mcc_wrb(&phba->ctrl, tag);
 return rc;
}
