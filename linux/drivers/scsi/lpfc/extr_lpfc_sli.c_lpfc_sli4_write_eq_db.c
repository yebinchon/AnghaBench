
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_register {scalar_t__ word0; } ;
struct lpfc_queue {int queue_id; TYPE_2__* phba; } ;
struct lpfc_hba {int dummy; } ;
struct TYPE_3__ {int EQDBregaddr; } ;
struct TYPE_4__ {scalar_t__ intr_type; TYPE_1__ sli4_hba; } ;


 scalar_t__ INTx ;
 int LPFC_EQID_HI_FIELD_SHIFT ;
 int LPFC_QUEUE_REARM ;
 int LPFC_QUEUE_TYPE_EVENT ;
 int bf_set (int ,struct lpfc_register*,int) ;
 int lpfc_eqcq_doorbell_arm ;
 int lpfc_eqcq_doorbell_eqci ;
 int lpfc_eqcq_doorbell_eqid_hi ;
 int lpfc_eqcq_doorbell_eqid_lo ;
 int lpfc_eqcq_doorbell_num_released ;
 int lpfc_eqcq_doorbell_qt ;
 int readl (int ) ;
 scalar_t__ unlikely (int) ;
 int writel (scalar_t__,int ) ;

void
lpfc_sli4_write_eq_db(struct lpfc_hba *phba, struct lpfc_queue *q,
       uint32_t count, bool arm)
{
 struct lpfc_register doorbell;


 if (unlikely(!q || (count == 0 && !arm)))
  return;


 doorbell.word0 = 0;
 if (arm) {
  bf_set(lpfc_eqcq_doorbell_arm, &doorbell, 1);
  bf_set(lpfc_eqcq_doorbell_eqci, &doorbell, 1);
 }
 bf_set(lpfc_eqcq_doorbell_num_released, &doorbell, count);
 bf_set(lpfc_eqcq_doorbell_qt, &doorbell, LPFC_QUEUE_TYPE_EVENT);
 bf_set(lpfc_eqcq_doorbell_eqid_hi, &doorbell,
   (q->queue_id >> LPFC_EQID_HI_FIELD_SHIFT));
 bf_set(lpfc_eqcq_doorbell_eqid_lo, &doorbell, q->queue_id);
 writel(doorbell.word0, q->phba->sli4_hba.EQDBregaddr);

 if ((q->phba->intr_type == INTx) && (arm == LPFC_QUEUE_REARM))
  readl(q->phba->sli4_hba.EQDBregaddr);
}
