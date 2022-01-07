
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_sli4_hdw_queue {scalar_t__ io_cq; scalar_t__ io_wq; } ;
struct lpfc_queue {int dummy; } ;
struct TYPE_4__ {scalar_t__ cq_max; int * cq_lookup; TYPE_1__* hba_eq_hdl; struct lpfc_sli4_hdw_queue* hdwq; scalar_t__* nvmet_cqset; int * nvmet_mrq_data; scalar_t__* nvmet_mrq_hdr; scalar_t__ nvmels_cq; scalar_t__ els_cq; scalar_t__ mbx_cq; int dat_rq; scalar_t__ hdr_rq; scalar_t__ els_wq; scalar_t__ nvmels_wq; scalar_t__ mbx_wq; } ;
struct lpfc_hba {int cfg_nvmet_mrq; int cfg_hdw_queue; int cfg_irq_chann; TYPE_2__ sli4_hba; scalar_t__ nvmet_support; } ;
struct TYPE_3__ {struct lpfc_queue* eq; } ;


 int kfree (int *) ;
 int lpfc_cq_destroy (struct lpfc_hba*,scalar_t__) ;
 int lpfc_eq_destroy (struct lpfc_hba*,struct lpfc_queue*) ;
 int lpfc_mq_destroy (struct lpfc_hba*,scalar_t__) ;
 int lpfc_rq_destroy (struct lpfc_hba*,scalar_t__,int ) ;
 int lpfc_wq_destroy (struct lpfc_hba*,scalar_t__) ;

void
lpfc_sli4_queue_unset(struct lpfc_hba *phba)
{
 struct lpfc_sli4_hdw_queue *qp;
 struct lpfc_queue *eq;
 int qidx;


 if (phba->sli4_hba.mbx_wq)
  lpfc_mq_destroy(phba, phba->sli4_hba.mbx_wq);


 if (phba->sli4_hba.nvmels_wq)
  lpfc_wq_destroy(phba, phba->sli4_hba.nvmels_wq);


 if (phba->sli4_hba.els_wq)
  lpfc_wq_destroy(phba, phba->sli4_hba.els_wq);


 if (phba->sli4_hba.hdr_rq)
  lpfc_rq_destroy(phba, phba->sli4_hba.hdr_rq,
    phba->sli4_hba.dat_rq);


 if (phba->sli4_hba.mbx_cq)
  lpfc_cq_destroy(phba, phba->sli4_hba.mbx_cq);


 if (phba->sli4_hba.els_cq)
  lpfc_cq_destroy(phba, phba->sli4_hba.els_cq);


 if (phba->sli4_hba.nvmels_cq)
  lpfc_cq_destroy(phba, phba->sli4_hba.nvmels_cq);

 if (phba->nvmet_support) {

  if (phba->sli4_hba.nvmet_mrq_hdr) {
   for (qidx = 0; qidx < phba->cfg_nvmet_mrq; qidx++)
    lpfc_rq_destroy(
     phba,
     phba->sli4_hba.nvmet_mrq_hdr[qidx],
     phba->sli4_hba.nvmet_mrq_data[qidx]);
  }


  if (phba->sli4_hba.nvmet_cqset) {
   for (qidx = 0; qidx < phba->cfg_nvmet_mrq; qidx++)
    lpfc_cq_destroy(
     phba, phba->sli4_hba.nvmet_cqset[qidx]);
  }
 }


 if (phba->sli4_hba.hdwq) {

  for (qidx = 0; qidx < phba->cfg_hdw_queue; qidx++) {

   qp = &phba->sli4_hba.hdwq[qidx];
   lpfc_wq_destroy(phba, qp->io_wq);
   lpfc_cq_destroy(phba, qp->io_cq);
  }

  for (qidx = 0; qidx < phba->cfg_irq_chann; qidx++) {

   eq = phba->sli4_hba.hba_eq_hdl[qidx].eq;
   lpfc_eq_destroy(phba, eq);
  }
 }

 kfree(phba->sli4_hba.cq_lookup);
 phba->sli4_hba.cq_lookup = ((void*)0);
 phba->sli4_hba.cq_max = 0;
}
