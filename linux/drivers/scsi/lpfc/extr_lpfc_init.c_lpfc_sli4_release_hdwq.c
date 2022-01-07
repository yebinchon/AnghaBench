
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct lpfc_sli4_hdw_queue {struct lpfc_queue* io_wq; struct lpfc_queue* io_cq; } ;
struct lpfc_queue {int dummy; } ;
struct TYPE_4__ {TYPE_1__* hba_eq_hdl; struct lpfc_sli4_hdw_queue* hdwq; } ;
struct lpfc_hba {size_t cfg_hdw_queue; size_t cfg_irq_chann; TYPE_2__ sli4_hba; int nvmet_support; scalar_t__ cfg_xpsgl; } ;
struct TYPE_3__ {struct lpfc_queue* eq; } ;


 int lpfc_free_cmd_rsp_buf_per_hdwq (struct lpfc_hba*,struct lpfc_sli4_hdw_queue*) ;
 int lpfc_free_sgl_per_hdwq (struct lpfc_hba*,struct lpfc_sli4_hdw_queue*) ;
 int lpfc_sli4_queue_free (struct lpfc_queue*) ;

__attribute__((used)) static inline void
lpfc_sli4_release_hdwq(struct lpfc_hba *phba)
{
 struct lpfc_sli4_hdw_queue *hdwq;
 struct lpfc_queue *eq;
 uint32_t idx;

 hdwq = phba->sli4_hba.hdwq;


 for (idx = 0; idx < phba->cfg_hdw_queue; idx++) {

  lpfc_sli4_queue_free(hdwq[idx].io_cq);
  lpfc_sli4_queue_free(hdwq[idx].io_wq);
  hdwq[idx].io_cq = ((void*)0);
  hdwq[idx].io_wq = ((void*)0);
  if (phba->cfg_xpsgl && !phba->nvmet_support)
   lpfc_free_sgl_per_hdwq(phba, &hdwq[idx]);
  lpfc_free_cmd_rsp_buf_per_hdwq(phba, &hdwq[idx]);
 }

 for (idx = 0; idx < phba->cfg_irq_chann; idx++) {

  eq = phba->sli4_hba.hba_eq_hdl[idx].eq;
  lpfc_sli4_queue_free(eq);
  phba->sli4_hba.hba_eq_hdl[idx].eq = ((void*)0);
 }
}
