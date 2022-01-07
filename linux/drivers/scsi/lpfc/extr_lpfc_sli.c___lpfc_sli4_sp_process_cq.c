
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_queue {int type; int chann; int queue_id; int sched_spwork; int subtype; struct lpfc_hba* phba; } ;
struct lpfc_hba {int wq; } ;


 int KERN_ERR ;
 int LOG_SLI ;
 int LPFC_IO ;


 int __lpfc_sli4_process_cq (struct lpfc_hba*,struct lpfc_queue*,int ,unsigned long*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 int lpfc_sli4_fp_handle_cqe ;
 int lpfc_sli4_sp_handle_cqe ;
 int lpfc_sli4_sp_handle_mcqe ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int queue_delayed_work_on (int ,int ,int *,unsigned long) ;

__attribute__((used)) static void
__lpfc_sli4_sp_process_cq(struct lpfc_queue *cq)
{
 struct lpfc_hba *phba = cq->phba;
 unsigned long delay;
 bool workposted = 0;


 switch (cq->type) {
 case 129:
  workposted |= __lpfc_sli4_process_cq(phba, cq,
      lpfc_sli4_sp_handle_mcqe,
      &delay);
  break;
 case 128:
  if (cq->subtype == LPFC_IO)
   workposted |= __lpfc_sli4_process_cq(phba, cq,
      lpfc_sli4_fp_handle_cqe,
      &delay);
  else
   workposted |= __lpfc_sli4_process_cq(phba, cq,
      lpfc_sli4_sp_handle_cqe,
      &delay);
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0370 Invalid completion queue type (%d)\n",
    cq->type);
  return;
 }

 if (delay) {
  if (!queue_delayed_work_on(cq->chann, phba->wq,
        &cq->sched_spwork, delay))
   lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0394 Cannot schedule soft IRQ "
    "for cqid=%d on CPU %d\n",
    cq->queue_id, cq->chann);
 }


 if (workposted)
  lpfc_worker_wake_up(phba);
}
