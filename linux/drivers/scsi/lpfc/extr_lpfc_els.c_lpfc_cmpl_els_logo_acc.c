
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_rpi; int nlp_flag; int nlp_DID; } ;
struct TYPE_3__ {int * ulpWord; } ;
struct TYPE_4__ {TYPE_1__ un; int ulpStatus; } ;
struct lpfc_iocbq {int * context1; TYPE_2__ iocb; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
typedef TYPE_2__ IOCB_t ;


 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_RSP ;
 scalar_t__ NLP_STE_NPR_NODE ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_nlp_not_used (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,scalar_t__,int ) ;
 int lpfc_unreg_rpi (struct lpfc_vport*,struct lpfc_nodelist*) ;

__attribute__((used)) static void
lpfc_cmpl_els_logo_acc(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
         struct lpfc_iocbq *rspiocb)
{
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) cmdiocb->context1;
 struct lpfc_vport *vport = cmdiocb->vport;
 IOCB_t *irsp;

 irsp = &rspiocb->iocb;
 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
  "ACC LOGO cmpl:   status:x%x/x%x did:x%x",
  irsp->ulpStatus, irsp->un.ulpWord[4], ndlp->nlp_DID);

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0109 ACC to LOGO completes to NPort x%x "
    "Data: x%x x%x x%x\n",
    ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
    ndlp->nlp_rpi);

 if (ndlp->nlp_state == NLP_STE_NPR_NODE) {

  if (!lpfc_nlp_not_used(ndlp)) {



   lpfc_unreg_rpi(vport, ndlp);
  } else {



   cmdiocb->context1 = ((void*)0);
  }
 }





 lpfc_els_free_iocb(phba, cmdiocb);
}
