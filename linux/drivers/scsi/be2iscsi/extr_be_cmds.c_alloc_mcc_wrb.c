
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct be_queue_info {scalar_t__ used; scalar_t__ len; int head; } ;
struct TYPE_4__ {struct be_queue_info q; } ;
struct TYPE_6__ {size_t mcc_tag_available; unsigned int* mcc_tag; size_t mcc_alloc_index; int mcc_lock; TYPE_2__* ptag_state; scalar_t__* mcc_tag_status; TYPE_1__ mcc_obj; } ;
struct beiscsi_hba {TYPE_3__ ctrl; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct TYPE_5__ {int * cbfn; scalar_t__ tag_state; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_INIT ;
 int BEISCSI_LOG_MBOX ;
 int KERN_ERR ;
 int MAX_MCC_CMD ;
 int MCC_Q_WRB_IDX_MASK ;
 int MCC_Q_WRB_IDX_SHIFT ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*,scalar_t__,size_t) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int queue_head_inc (struct be_queue_info*) ;
 struct be_mcc_wrb* queue_head_node (struct be_queue_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct be_mcc_wrb *alloc_mcc_wrb(struct beiscsi_hba *phba,
     unsigned int *ref_tag)
{
 struct be_queue_info *mccq = &phba->ctrl.mcc_obj.q;
 struct be_mcc_wrb *wrb = ((void*)0);
 unsigned int tag;

 spin_lock(&phba->ctrl.mcc_lock);
 if (mccq->used == mccq->len) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT |
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
       "BC_%d : MCC queue full: WRB used %u tag avail %u\n",
       mccq->used, phba->ctrl.mcc_tag_available);
  goto alloc_failed;
 }

 if (!phba->ctrl.mcc_tag_available)
  goto alloc_failed;

 tag = phba->ctrl.mcc_tag[phba->ctrl.mcc_alloc_index];
 if (!tag) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT |
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
       "BC_%d : MCC tag 0 allocated: tag avail %u alloc index %u\n",
       phba->ctrl.mcc_tag_available,
       phba->ctrl.mcc_alloc_index);
  goto alloc_failed;
 }


 *ref_tag = tag;
 phba->ctrl.mcc_tag[phba->ctrl.mcc_alloc_index] = 0;
 phba->ctrl.mcc_tag_status[tag] = 0;
 phba->ctrl.ptag_state[tag].tag_state = 0;
 phba->ctrl.ptag_state[tag].cbfn = ((void*)0);
 phba->ctrl.mcc_tag_available--;
 if (phba->ctrl.mcc_alloc_index == (MAX_MCC_CMD - 1))
  phba->ctrl.mcc_alloc_index = 0;
 else
  phba->ctrl.mcc_alloc_index++;

 wrb = queue_head_node(mccq);
 memset(wrb, 0, sizeof(*wrb));
 wrb->tag0 = tag;
 wrb->tag0 |= (mccq->head << MCC_Q_WRB_IDX_SHIFT) & MCC_Q_WRB_IDX_MASK;
 queue_head_inc(mccq);
 mccq->used++;

alloc_failed:
 spin_unlock(&phba->ctrl.mcc_lock);
 return wrb;
}
