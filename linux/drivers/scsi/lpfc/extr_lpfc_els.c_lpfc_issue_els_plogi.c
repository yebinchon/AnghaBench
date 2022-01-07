
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {void* flags; void* vid; } ;
struct TYPE_9__ {TYPE_3__ vv; int vendorVersion; } ;
struct TYPE_7__ {int altBbCredit; scalar_t__ fcphLow; scalar_t__ fcphHigh; int valid_vendor_ver_level; int bbRcvSizeMsb; } ;
struct serv_parm {TYPE_4__ un; TYPE_2__ cmn; } ;
struct lpfc_vport {int fc_flag; int fc_sparam; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_DID; scalar_t__ nlp_defer_did; int nlp_rpi; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; } ;
struct TYPE_10__ {int elsXmitPLOGI; } ;
struct TYPE_6__ {int sli_flag; } ;
struct lpfc_hba {TYPE_5__ fc_stat; TYPE_1__ sli; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;


 scalar_t__ ELS_CMD_PLOGI ;
 int FC_FABRIC ;
 int FC_OFFLINE_MODE ;
 scalar_t__ FC_PH3 ;
 scalar_t__ FC_PH_4_3 ;
 int FC_PUBLIC_LOOP ;
 int Fabric_DID_MASK ;
 int IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int LPFC_SLI_SUPPRESS_RSP ;
 int LPFC_VV_EMLX_ID ;
 int LPFC_VV_SUPPRESS_RSP ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 scalar_t__ NLP_EVT_NOTHING_PENDING ;
 int NLP_FCP_PRLI_RJT ;
 int NLP_UNREG_INP ;
 void* cpu_to_be32 (int ) ;
 int lpfc_cmpl_els_plogi ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,scalar_t__,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,scalar_t__) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,scalar_t__,scalar_t__) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,int,int ,struct lpfc_nodelist*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,int ,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_issue_els_plogi(struct lpfc_vport *vport, uint32_t did, uint8_t retry)
{
 struct lpfc_hba *phba = vport->phba;
 struct Scsi_Host *shost;
 struct serv_parm *sp;
 struct lpfc_nodelist *ndlp;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;
 uint16_t cmdsize;
 int ret;

 ndlp = lpfc_findnode_did(vport, did);

 if (ndlp) {




  if ((ndlp->nlp_flag & NLP_UNREG_INP) &&
      ((ndlp->nlp_DID & Fabric_DID_MASK) != Fabric_DID_MASK) &&
      !(vport->fc_flag & FC_OFFLINE_MODE)) {
   lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
      "4110 Issue PLOGI x%x deferred "
      "on NPort x%x rpi x%x Data: x%px\n",
      ndlp->nlp_defer_did, ndlp->nlp_DID,
      ndlp->nlp_rpi, ndlp);


   if (ndlp->nlp_defer_did == NLP_EVT_NOTHING_PENDING)
    ndlp->nlp_defer_did = did;
   return 0;
  }
  if (!NLP_CHK_NODE_ACT(ndlp))
   ndlp = ((void*)0);
 }


 cmdsize = (sizeof(uint32_t) + sizeof(struct serv_parm));
 elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, retry, ndlp, did,
         ELS_CMD_PLOGI);
 if (!elsiocb)
  return 1;

 shost = lpfc_shost_from_vport(vport);
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag &= ~NLP_FCP_PRLI_RJT;
 spin_unlock_irq(shost->host_lock);

 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);


 *((uint32_t *) (pcmd)) = ELS_CMD_PLOGI;
 pcmd += sizeof(uint32_t);
 memcpy(pcmd, &vport->fc_sparam, sizeof(struct serv_parm));
 sp = (struct serv_parm *) pcmd;





 if ((vport->fc_flag & FC_FABRIC) && !(vport->fc_flag & FC_PUBLIC_LOOP))
  sp->cmn.altBbCredit = 1;

 if (sp->cmn.fcphLow < FC_PH_4_3)
  sp->cmn.fcphLow = FC_PH_4_3;

 if (sp->cmn.fcphHigh < FC_PH3)
  sp->cmn.fcphHigh = FC_PH3;

 sp->cmn.valid_vendor_ver_level = 0;
 memset(sp->un.vendorVersion, 0, sizeof(sp->un.vendorVersion));
 sp->cmn.bbRcvSizeMsb &= 0xF;

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue PLOGI:     did:x%x",
  did, 0, 0);




 if (phba->sli.sli_flag & LPFC_SLI_SUPPRESS_RSP) {
  sp->cmn.valid_vendor_ver_level = 1;
  sp->un.vv.vid = cpu_to_be32(LPFC_VV_EMLX_ID);
  sp->un.vv.flags = cpu_to_be32(LPFC_VV_SUPPRESS_RSP);
 }

 phba->fc_stat.elsXmitPLOGI++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_plogi;
 ret = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0);

 if (ret == IOCB_ERROR) {
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 return 0;
}
