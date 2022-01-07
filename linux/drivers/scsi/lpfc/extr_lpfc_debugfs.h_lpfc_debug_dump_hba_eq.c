
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_queue {int queue_id; } ;
struct TYPE_4__ {TYPE_1__* hdwq; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; } ;
struct TYPE_3__ {struct lpfc_queue* hba_eq; } ;


 int lpfc_debug_dump_q (struct lpfc_queue*) ;
 int pr_err (char*,int,int ) ;

__attribute__((used)) static inline void
lpfc_debug_dump_hba_eq(struct lpfc_hba *phba, int qidx)
{
 struct lpfc_queue *qp;

 qp = phba->sli4_hba.hdwq[qidx].hba_eq;

 pr_err("EQ[Idx:%d|Qid:%d]\n", qidx, qp->queue_id);

 lpfc_debug_dump_q(qp);
}
