
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_register {scalar_t__ word0; } ;
struct lpfc_queue {TYPE_2__* phba; int queue_id; } ;
struct TYPE_3__ {int EQDBregaddr; } ;
struct TYPE_4__ {TYPE_1__ sli4_hba; } ;


 int bf_set (int ,struct lpfc_register*,int ) ;
 int lpfc_if6_eq_doorbell_eqid ;
 int writel (scalar_t__,int ) ;

void
lpfc_sli4_if6_eq_clr_intr(struct lpfc_queue *q)
{
 struct lpfc_register doorbell;

 doorbell.word0 = 0;
 bf_set(lpfc_if6_eq_doorbell_eqid, &doorbell, q->queue_id);
 writel(doorbell.word0, q->phba->sli4_hba.EQDBregaddr);
}
