
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct TYPE_8__ {int* fc4_types; } ;
struct TYPE_6__ {int PortId; } ;
struct TYPE_9__ {TYPE_3__ gft_acc; TYPE_1__ gft; } ;
struct lpfc_sli_ct_request {TYPE_4__ un; } ;
struct lpfc_nodelist {void* nlp_state; void* nlp_prev_state; int nlp_fc4_type; } ;
struct TYPE_7__ {int * ulpWord; } ;
struct TYPE_10__ {int ulpStatus; TYPE_2__ un; } ;
struct lpfc_iocbq {scalar_t__ context2; scalar_t__ context1; TYPE_5__ iocb; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
typedef TYPE_5__ IOCB_t ;


 int FC_TYPE_FCP ;
 int FC_TYPE_NVME ;
 int IOSTAT_SUCCESS ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LPFC_DISC_TRC_CT ;
 int LPFC_FC4_TYPE_BITMASK ;
 int NLP_FC4_FCP ;
 int NLP_FC4_NVME ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_PRLI_ISSUE ;
 void* NLP_STE_REG_LOGIN_ISSUE ;
 int be32_to_cpu (int) ;
 int lpfc_ct_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int) ;
 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_issue_els_prli (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;

__attribute__((used)) static void
lpfc_cmpl_ct_cmd_gft_id(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
    struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 IOCB_t *irsp = &rspiocb->iocb;
 struct lpfc_dmabuf *inp = (struct lpfc_dmabuf *)cmdiocb->context1;
 struct lpfc_dmabuf *outp = (struct lpfc_dmabuf *)cmdiocb->context2;
 struct lpfc_sli_ct_request *CTrsp;
 int did;
 struct lpfc_nodelist *ndlp;
 uint32_t fc4_data_0, fc4_data_1;

 did = ((struct lpfc_sli_ct_request *)inp->virt)->un.gft.PortId;
 did = be32_to_cpu(did);

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_CT,
         "GFT_ID cmpl: status:x%x/x%x did:x%x",
         irsp->ulpStatus, irsp->un.ulpWord[4], did);

 if (irsp->ulpStatus == IOSTAT_SUCCESS) {

  CTrsp = (struct lpfc_sli_ct_request *)outp->virt;
  fc4_data_0 = be32_to_cpu(CTrsp->un.gft_acc.fc4_types[0]);
  fc4_data_1 = be32_to_cpu(CTrsp->un.gft_acc.fc4_types[1]);

  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "6432 Process GFT_ID rsp for %08x "
     "Data %08x %08x %s %s\n",
     did, fc4_data_0, fc4_data_1,
     (fc4_data_0 & LPFC_FC4_TYPE_BITMASK) ?
      "FCP" : " ",
     (fc4_data_1 & LPFC_FC4_TYPE_BITMASK) ?
      "NVME" : " ");

  ndlp = lpfc_findnode_did(vport, did);
  if (ndlp) {




   if (fc4_data_0 & LPFC_FC4_TYPE_BITMASK)
    ndlp->nlp_fc4_type |= NLP_FC4_FCP;
   if (fc4_data_1 & LPFC_FC4_TYPE_BITMASK)
    ndlp->nlp_fc4_type |= NLP_FC4_NVME;
   lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
      "3064 Setting ndlp x%px, DID x%06x "
      "with FC4 x%08x, Data: x%08x x%08x "
      "%d\n",
      ndlp, did, ndlp->nlp_fc4_type,
      FC_TYPE_FCP, FC_TYPE_NVME,
      ndlp->nlp_state);

   if (ndlp->nlp_state == NLP_STE_REG_LOGIN_ISSUE &&
       ndlp->nlp_fc4_type) {
    ndlp->nlp_prev_state = NLP_STE_REG_LOGIN_ISSUE;

    lpfc_nlp_set_state(vport, ndlp,
         NLP_STE_PRLI_ISSUE);
    lpfc_issue_els_prli(vport, ndlp, 0);
   } else if (!ndlp->nlp_fc4_type) {

    lpfc_printf_vlog(vport, KERN_INFO,
       LOG_DISCOVERY,
       "6443 Sending LOGO ndlp x%px,"
       "DID x%06x with fc4_type: "
       "x%08x, state: %d\n",
       ndlp, did, ndlp->nlp_fc4_type,
       ndlp->nlp_state);
    lpfc_issue_els_logo(vport, ndlp, 0);
    ndlp->nlp_prev_state = NLP_STE_REG_LOGIN_ISSUE;
    lpfc_nlp_set_state(vport, ndlp,
         NLP_STE_NPR_NODE);
   }
  }
 } else
  lpfc_printf_vlog(vport, KERN_ERR, LOG_DISCOVERY,
     "3065 GFT_ID failed x%08x\n", irsp->ulpStatus);

 lpfc_ct_free_iocb(phba, cmdiocb);
}
