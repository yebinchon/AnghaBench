
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int abort_tag; } ;
struct TYPE_7__ {void* bdeSize; int bdeFlags; } ;
struct TYPE_8__ {TYPE_1__ f; } ;
struct TYPE_9__ {void* addrHigh; void* addrLow; TYPE_2__ tus; } ;
struct TYPE_11__ {void* xmit_len; TYPE_6__ wqe_com; TYPE_6__ wge_ctl; TYPE_3__ bde; } ;
union lpfc_wqe128 {TYPE_5__ xmit_sequence; } ;
typedef union lpfc_wqe {int dummy; } lpfc_wqe ;
typedef void* uint16_t ;
struct lpfc_nvmet_rcv_ctx {int oxid; struct lpfc_iocbq* wqeq; int state; int sid; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; size_t nlp_rpi; int nlp_DID; } ;
struct lpfc_iocbq {int sli4_xritag; int iotag; int retry; int * context3; struct lpfc_nvmet_rcv_ctx* context2; int iocb_flag; scalar_t__ drvrTimeout; int vport; union lpfc_wqe128 wqe; int * context1; } ;
struct TYPE_10__ {int* rpi_ids; } ;
struct lpfc_hba {int fc_ratov; int pport; TYPE_4__ sli4_hba; } ;
typedef int dma_addr_t ;


 int BUFF_TYPE_BDE_64 ;
 int CLASS3 ;
 int CMD_XMIT_SEQUENCE64_WQE ;
 int FC_RCTL_ELS4_REP ;
 int FC_TYPE_NVME ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_NVME_DISC ;
 scalar_t__ LPFC_DRVR_TIMEOUT ;
 int LPFC_IO_NVME_LS ;
 int LPFC_WQE_CQ_ID_DEFAULT ;
 int LPFC_WQE_IOD_WRITE ;
 int LPFC_WQE_LENLOC_WORD12 ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 scalar_t__ NLP_STE_MAPPED_NODE ;
 scalar_t__ NLP_STE_UNMAPPED_NODE ;
 int OTHER_COMMAND ;
 int SLI4_CT_RPI ;
 int bf_set (int ,TYPE_6__*,int) ;
 void* le32_to_cpu (int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (int ,int ) ;
 int lpfc_is_link_up (struct lpfc_hba*) ;
 int * lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int,int,...) ;
 struct lpfc_iocbq* lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int memset (union lpfc_wqe128*,int ,int) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;
 int wqe_class ;
 int wqe_cmd_type ;
 int wqe_cmnd ;
 int wqe_cqid ;
 int wqe_ct ;
 int wqe_ctxt_tag ;
 int wqe_dbde ;
 int wqe_dfctl ;
 int wqe_ebde_cnt ;
 int wqe_iod ;
 int wqe_la ;
 int wqe_lenloc ;
 int wqe_ls ;
 int wqe_pu ;
 int wqe_rctl ;
 int wqe_rcvoxid ;
 int wqe_reqtag ;
 int wqe_type ;
 int wqe_xri_tag ;

__attribute__((used)) static struct lpfc_iocbq *
lpfc_nvmet_prep_ls_wqe(struct lpfc_hba *phba,
         struct lpfc_nvmet_rcv_ctx *ctxp,
         dma_addr_t rspbuf, uint16_t rspsize)
{
 struct lpfc_nodelist *ndlp;
 struct lpfc_iocbq *nvmewqe;
 union lpfc_wqe128 *wqe;

 if (!lpfc_is_link_up(phba)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_NVME_DISC,
    "6104 NVMET prep LS wqe: link err: "
    "NPORT x%x oxid:x%x ste %d\n",
    ctxp->sid, ctxp->oxid, ctxp->state);
  return ((void*)0);
 }


 nvmewqe = lpfc_sli_get_iocbq(phba);
 if (nvmewqe == ((void*)0)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_NVME_DISC,
    "6105 NVMET prep LS wqe: No WQE: "
    "NPORT x%x oxid x%x ste %d\n",
    ctxp->sid, ctxp->oxid, ctxp->state);
  return ((void*)0);
 }

 ndlp = lpfc_findnode_did(phba->pport, ctxp->sid);
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp) ||
     ((ndlp->nlp_state != NLP_STE_UNMAPPED_NODE) &&
     (ndlp->nlp_state != NLP_STE_MAPPED_NODE))) {
  lpfc_printf_log(phba, KERN_ERR, LOG_NVME_DISC,
    "6106 NVMET prep LS wqe: No ndlp: "
    "NPORT x%x oxid x%x ste %d\n",
    ctxp->sid, ctxp->oxid, ctxp->state);
  goto nvme_wqe_free_wqeq_exit;
 }
 ctxp->wqeq = nvmewqe;


 nvmewqe->context1 = lpfc_nlp_get(ndlp);
 if (nvmewqe->context1 == ((void*)0))
  goto nvme_wqe_free_wqeq_exit;
 nvmewqe->context2 = ctxp;

 wqe = &nvmewqe->wqe;
 memset(wqe, 0, sizeof(union lpfc_wqe));


 wqe->xmit_sequence.bde.tus.f.bdeFlags = BUFF_TYPE_BDE_64;
 wqe->xmit_sequence.bde.tus.f.bdeSize = rspsize;
 wqe->xmit_sequence.bde.addrLow = le32_to_cpu(putPaddrLow(rspbuf));
 wqe->xmit_sequence.bde.addrHigh = le32_to_cpu(putPaddrHigh(rspbuf));






 bf_set(wqe_dfctl, &wqe->xmit_sequence.wge_ctl, 0);
 bf_set(wqe_ls, &wqe->xmit_sequence.wge_ctl, 1);
 bf_set(wqe_la, &wqe->xmit_sequence.wge_ctl, 0);
 bf_set(wqe_rctl, &wqe->xmit_sequence.wge_ctl, FC_RCTL_ELS4_REP);
 bf_set(wqe_type, &wqe->xmit_sequence.wge_ctl, FC_TYPE_NVME);


 bf_set(wqe_ctxt_tag, &wqe->xmit_sequence.wqe_com,
        phba->sli4_hba.rpi_ids[ndlp->nlp_rpi]);
 bf_set(wqe_xri_tag, &wqe->xmit_sequence.wqe_com, nvmewqe->sli4_xritag);


 bf_set(wqe_cmnd, &wqe->xmit_sequence.wqe_com,
        CMD_XMIT_SEQUENCE64_WQE);
 bf_set(wqe_ct, &wqe->xmit_sequence.wqe_com, SLI4_CT_RPI);
 bf_set(wqe_class, &wqe->xmit_sequence.wqe_com, CLASS3);
 bf_set(wqe_pu, &wqe->xmit_sequence.wqe_com, 0);


 wqe->xmit_sequence.wqe_com.abort_tag = nvmewqe->iotag;


 bf_set(wqe_reqtag, &wqe->xmit_sequence.wqe_com, nvmewqe->iotag);

 bf_set(wqe_rcvoxid, &wqe->xmit_sequence.wqe_com, ctxp->oxid);


 bf_set(wqe_dbde, &wqe->xmit_sequence.wqe_com, 1);
 bf_set(wqe_iod, &wqe->xmit_sequence.wqe_com, LPFC_WQE_IOD_WRITE);
 bf_set(wqe_lenloc, &wqe->xmit_sequence.wqe_com,
        LPFC_WQE_LENLOC_WORD12);
 bf_set(wqe_ebde_cnt, &wqe->xmit_sequence.wqe_com, 0);


 bf_set(wqe_cqid, &wqe->xmit_sequence.wqe_com,
        LPFC_WQE_CQ_ID_DEFAULT);
 bf_set(wqe_cmd_type, &wqe->xmit_sequence.wqe_com,
        OTHER_COMMAND);


 wqe->xmit_sequence.xmit_len = rspsize;

 nvmewqe->retry = 1;
 nvmewqe->vport = phba->pport;
 nvmewqe->drvrTimeout = (phba->fc_ratov * 3) + LPFC_DRVR_TIMEOUT;
 nvmewqe->iocb_flag |= LPFC_IO_NVME_LS;


 lpfc_printf_log(phba, KERN_INFO, LOG_NVME_DISC,
   "6039 Xmit NVMET LS response to remote "
   "NPORT x%x iotag:x%x oxid:x%x size:x%x\n",
   ndlp->nlp_DID, nvmewqe->iotag, ctxp->oxid,
   rspsize);
 return nvmewqe;

nvme_wqe_free_wqeq_exit:
 nvmewqe->context2 = ((void*)0);
 nvmewqe->context3 = ((void*)0);
 lpfc_sli_release_iocbq(phba, nvmewqe);
 return ((void*)0);
}
