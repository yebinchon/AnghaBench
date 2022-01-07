
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_sli4_hdw_queue {scalar_t__ io_cq; } ;
struct lpfc_sli4_hba {scalar_t__* nvmet_cqset; int (* sli4_write_cq_db ) (struct lpfc_hba*,scalar_t__,int ,int ) ;int (* sli4_write_eq_db ) (struct lpfc_hba*,struct lpfc_queue*,int ,int ) ;TYPE_1__* hba_eq_hdl; struct lpfc_sli4_hdw_queue* hdwq; scalar_t__ nvmels_cq; scalar_t__ els_cq; scalar_t__ mbx_cq; } ;
struct lpfc_queue {int dummy; } ;
struct lpfc_hba {int cfg_hdw_queue; int cfg_irq_chann; int cfg_nvmet_mrq; scalar_t__ nvmet_support; struct lpfc_sli4_hba sli4_hba; } ;
struct TYPE_2__ {struct lpfc_queue* eq; } ;


 int LPFC_QUEUE_REARM ;
 int stub1 (struct lpfc_hba*,scalar_t__,int ,int ) ;
 int stub2 (struct lpfc_hba*,scalar_t__,int ,int ) ;
 int stub3 (struct lpfc_hba*,scalar_t__,int ,int ) ;
 int stub4 (struct lpfc_hba*,scalar_t__,int ,int ) ;
 int stub5 (struct lpfc_hba*,struct lpfc_queue*,int ,int ) ;
 int stub6 (struct lpfc_hba*,scalar_t__,int ,int ) ;

__attribute__((used)) static void
lpfc_sli4_arm_cqeq_intr(struct lpfc_hba *phba)
{
 int qidx;
 struct lpfc_sli4_hba *sli4_hba = &phba->sli4_hba;
 struct lpfc_sli4_hdw_queue *qp;
 struct lpfc_queue *eq;

 sli4_hba->sli4_write_cq_db(phba, sli4_hba->mbx_cq, 0, LPFC_QUEUE_REARM);
 sli4_hba->sli4_write_cq_db(phba, sli4_hba->els_cq, 0, LPFC_QUEUE_REARM);
 if (sli4_hba->nvmels_cq)
  sli4_hba->sli4_write_cq_db(phba, sli4_hba->nvmels_cq, 0,
        LPFC_QUEUE_REARM);

 if (sli4_hba->hdwq) {

  for (qidx = 0; qidx < phba->cfg_hdw_queue; qidx++) {
   qp = &sli4_hba->hdwq[qidx];

   sli4_hba->sli4_write_cq_db(phba, qp->io_cq, 0,
      LPFC_QUEUE_REARM);
  }


  for (qidx = 0; qidx < phba->cfg_irq_chann; qidx++) {
   eq = sli4_hba->hba_eq_hdl[qidx].eq;

   sli4_hba->sli4_write_eq_db(phba, eq,
         0, LPFC_QUEUE_REARM);
  }
 }

 if (phba->nvmet_support) {
  for (qidx = 0; qidx < phba->cfg_nvmet_mrq; qidx++) {
   sli4_hba->sli4_write_cq_db(phba,
    sli4_hba->nvmet_cqset[qidx], 0,
    LPFC_QUEUE_REARM);
  }
 }
}
