
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_queue {int max_proc_limit; int notify_interval; int CQ_max_cqe; scalar_t__ queue_claimed; int queue_id; TYPE_1__* assoc_qp; int q_flag; } ;
struct TYPE_4__ {int (* sli4_write_cq_db ) (struct lpfc_hba*,struct lpfc_queue*,int,int ) ;} ;
struct lpfc_hba {int cfg_cq_poll_threshold; TYPE_2__ sli4_hba; } ;
typedef struct lpfc_cqe lpfc_cqe ;
struct TYPE_3__ {int EQ_cqe_cnt; } ;


 int HBA_NVMET_CQ_NOTIFY ;
 int KERN_INFO ;
 int LOG_SLI ;
 int LPFC_NVMET_CQ_NOTIFY ;
 int LPFC_QUEUE_NOARM ;
 int LPFC_QUEUE_REARM ;
 int __lpfc_sli4_consume_cqe (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_cqe*) ;
 scalar_t__ cmpxchg (scalar_t__*,int ,int) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ) ;
 struct lpfc_cqe* lpfc_sli4_cq_get (struct lpfc_queue*) ;
 int stub1 (struct lpfc_hba*,struct lpfc_queue*,int,int ) ;
 int stub2 (struct lpfc_hba*,struct lpfc_queue*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
__lpfc_sli4_process_cq(struct lpfc_hba *phba, struct lpfc_queue *cq,
 bool (*handler)(struct lpfc_hba *, struct lpfc_queue *,
   struct lpfc_cqe *), unsigned long *delay)
{
 struct lpfc_cqe *cqe;
 bool workposted = 0;
 int count = 0, consumed = 0;
 bool arm = 1;


 *delay = 0;

 if (cmpxchg(&cq->queue_claimed, 0, 1) != 0)
  goto rearm_and_exit;


 cq->q_flag = 0;
 cqe = lpfc_sli4_cq_get(cq);
 while (cqe) {
  workposted |= handler(phba, cq, cqe);
  __lpfc_sli4_consume_cqe(phba, cq, cqe);

  consumed++;
  if (!(++count % cq->max_proc_limit))
   break;

  if (!(count % cq->notify_interval)) {
   phba->sli4_hba.sli4_write_cq_db(phba, cq, consumed,
      LPFC_QUEUE_NOARM);
   consumed = 0;
  }

  if (count == LPFC_NVMET_CQ_NOTIFY)
   cq->q_flag |= HBA_NVMET_CQ_NOTIFY;

  cqe = lpfc_sli4_cq_get(cq);
 }
 if (count >= phba->cfg_cq_poll_threshold) {
  *delay = 1;
  arm = 0;
 }


 if (count > cq->CQ_max_cqe)
  cq->CQ_max_cqe = count;

 cq->assoc_qp->EQ_cqe_cnt += count;


 if (unlikely(count == 0))
  lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
    "0369 No entry from completion queue "
    "qid=%d\n", cq->queue_id);

 cq->queue_claimed = 0;

rearm_and_exit:
 phba->sli4_hba.sli4_write_cq_db(phba, cq, consumed,
   arm ? LPFC_QUEUE_REARM : LPFC_QUEUE_NOARM);

 return workposted;
}
