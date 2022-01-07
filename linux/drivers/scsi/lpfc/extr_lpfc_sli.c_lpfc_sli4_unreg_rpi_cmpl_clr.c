
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lpfc_vport {int vpi; } ;
struct lpfc_nodelist {scalar_t__ nlp_defer_did; int nlp_flag; int nlp_DID; int nlp_rpi; int nlp_usg_map; } ;
struct TYPE_9__ {int sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; int mbox_mem_pool; TYPE_3__ sli4_hba; } ;
struct TYPE_7__ {scalar_t__ mbxCommand; } ;
struct TYPE_8__ {TYPE_1__ mb; } ;
struct TYPE_10__ {TYPE_2__ u; struct lpfc_nodelist* ctx_ndlp; struct lpfc_vport* vport; } ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LOG_MBOX ;
 int LOG_SLI ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ MBX_UNREG_LOGIN ;
 scalar_t__ NLP_EVT_NOTHING_PENDING ;
 int NLP_LOGO_ACC ;
 int NLP_UNREG_INP ;
 int __lpfc_sli_rpi_release (struct lpfc_vport*,struct lpfc_nodelist*) ;
 scalar_t__ bf_get (int ,int *) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,int ,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*,int ,int ,scalar_t__,struct lpfc_nodelist*,...) ;
 int lpfc_sli_intf_if_type ;
 int mempool_free (TYPE_4__*,int ) ;

void
lpfc_sli4_unreg_rpi_cmpl_clr(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_vport *vport = pmb->vport;
 struct lpfc_nodelist *ndlp;

 ndlp = pmb->ctx_ndlp;
 if (pmb->u.mb.mbxCommand == MBX_UNREG_LOGIN) {
  if (phba->sli_rev == LPFC_SLI_REV4 &&
      (bf_get(lpfc_sli_intf_if_type,
       &phba->sli4_hba.sli_intf) >=
       LPFC_SLI_INTF_IF_TYPE_2)) {
   if (ndlp) {
    lpfc_printf_vlog(
     vport, KERN_INFO, LOG_MBOX | LOG_SLI,
      "0010 UNREG_LOGIN vpi:%x "
      "rpi:%x DID:%x defer x%x flg x%x "
      "map:%x %px\n",
      vport->vpi, ndlp->nlp_rpi,
      ndlp->nlp_DID, ndlp->nlp_defer_did,
      ndlp->nlp_flag,
      ndlp->nlp_usg_map, ndlp);
    ndlp->nlp_flag &= ~NLP_LOGO_ACC;
    lpfc_nlp_put(ndlp);




    if ((ndlp->nlp_flag & NLP_UNREG_INP) &&
        (ndlp->nlp_defer_did !=
        NLP_EVT_NOTHING_PENDING)) {
     lpfc_printf_vlog(
      vport, KERN_INFO, LOG_DISCOVERY,
      "4111 UNREG cmpl deferred "
      "clr x%x on "
      "NPort x%x Data: x%x x%px\n",
      ndlp->nlp_rpi, ndlp->nlp_DID,
      ndlp->nlp_defer_did, ndlp);
     ndlp->nlp_flag &= ~NLP_UNREG_INP;
     ndlp->nlp_defer_did =
      NLP_EVT_NOTHING_PENDING;
     lpfc_issue_els_plogi(
      vport, ndlp->nlp_DID, 0);
    } else {
     __lpfc_sli_rpi_release(vport, ndlp);
    }
   }
  }
 }

 mempool_free(pmb, phba->mbox_mem_pool);
}
