
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_queue {int max_proc_limit; int notify_interval; int EQ_processed; int EQ_max_eqe; scalar_t__ queue_claimed; } ;
struct TYPE_2__ {int (* sli4_write_eq_db ) (struct lpfc_hba*,struct lpfc_queue*,int,int ) ;} ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct lpfc_eqe {int dummy; } ;


 int LPFC_QUEUE_NOARM ;
 int LPFC_QUEUE_REARM ;
 int __lpfc_sli4_consume_eqe (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_eqe*) ;
 scalar_t__ cmpxchg (scalar_t__*,int ,int) ;
 struct lpfc_eqe* lpfc_sli4_eq_get (struct lpfc_queue*) ;
 int lpfc_sli4_hba_handle_eqe (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_eqe*) ;
 int stub1 (struct lpfc_hba*,struct lpfc_queue*,int,int ) ;
 int stub2 (struct lpfc_hba*,struct lpfc_queue*,int,int ) ;

__attribute__((used)) static int
lpfc_sli4_process_eq(struct lpfc_hba *phba, struct lpfc_queue *eq)
{
 struct lpfc_eqe *eqe;
 int count = 0, consumed = 0;

 if (cmpxchg(&eq->queue_claimed, 0, 1) != 0)
  goto rearm_and_exit;

 eqe = lpfc_sli4_eq_get(eq);
 while (eqe) {
  lpfc_sli4_hba_handle_eqe(phba, eq, eqe);
  __lpfc_sli4_consume_eqe(phba, eq, eqe);

  consumed++;
  if (!(++count % eq->max_proc_limit))
   break;

  if (!(count % eq->notify_interval)) {
   phba->sli4_hba.sli4_write_eq_db(phba, eq, consumed,
       LPFC_QUEUE_NOARM);
   consumed = 0;
  }

  eqe = lpfc_sli4_eq_get(eq);
 }
 eq->EQ_processed += count;


 if (count > eq->EQ_max_eqe)
  eq->EQ_max_eqe = count;

 eq->queue_claimed = 0;

rearm_and_exit:

 phba->sli4_hba.sli4_write_eq_db(phba, eq, consumed, LPFC_QUEUE_REARM);

 return count;
}
