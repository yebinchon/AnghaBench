
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct be_queue_info {int id; } ;
struct TYPE_4__ {struct be_queue_info q; } ;
struct TYPE_6__ {TYPE_2__* ptag_state; TYPE_1__ mcc_obj; } ;
struct beiscsi_hba {scalar_t__ db_va; TYPE_3__ ctrl; } ;
struct TYPE_5__ {int tag_state; } ;


 int DB_MCCQ_NUM_POSTED_SHIFT ;
 scalar_t__ DB_MCCQ_OFFSET ;
 int DB_MCCQ_RING_ID_MASK ;
 int MCC_TAG_STATE_RUNNING ;
 int iowrite32 (int,scalar_t__) ;
 int set_bit (int ,int *) ;
 int wmb () ;

void be_mcc_notify(struct beiscsi_hba *phba, unsigned int tag)
{
 struct be_queue_info *mccq = &phba->ctrl.mcc_obj.q;
 u32 val = 0;

 set_bit(MCC_TAG_STATE_RUNNING, &phba->ctrl.ptag_state[tag].tag_state);
 val |= mccq->id & DB_MCCQ_RING_ID_MASK;
 val |= 1 << DB_MCCQ_NUM_POSTED_SHIFT;

 wmb();
 iowrite32(val, phba->db_va + DB_MCCQ_OFFSET);
}
