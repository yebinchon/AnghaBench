
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct lpfc_vport {int fc_flag; scalar_t__ num_disc_nodes; scalar_t__ port_state; int fc_rscn_id_cnt; } ;
struct TYPE_11__ {scalar_t__ CmdRsp; } ;
struct TYPE_12__ {TYPE_4__ bits; } ;
struct TYPE_9__ {int* fbits; } ;
struct TYPE_8__ {int PortId; } ;
struct TYPE_10__ {TYPE_2__ gff_acc; TYPE_1__ gff; } ;
struct lpfc_sli_ct_request {TYPE_5__ CommandResponse; TYPE_3__ un; } ;
struct lpfc_nodelist {int nlp_flag; } ;
struct TYPE_13__ {int* ulpWord; } ;
struct TYPE_14__ {TYPE_6__ un; int ulpStatus; } ;
struct lpfc_iocbq {scalar_t__ retry; scalar_t__ context2; scalar_t__ context1; TYPE_7__ iocb; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
typedef TYPE_7__ IOCB_t ;


 int FC4_FEATURE_INIT ;
 int FC4_FEATURE_TARGET ;
 size_t FCP_TYPE_FEATURE_OFFSET ;
 int FC_RSCN_MODE ;


 int IOERR_PARAM_MASK ;


 int IOSTAT_LOCAL_REJECT ;
 int IOSTAT_SUCCESS ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 scalar_t__ LPFC_DISC_AUTH ;
 int LPFC_DISC_TRC_CT ;
 scalar_t__ LPFC_MAX_NS_RETRY ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int SLI_CTNS_GFF_ID ;
 int SLI_CT_RESPONSE_FS_ACC ;
 scalar_t__ be16_to_cpu (int ) ;
 int be32_to_cpu (int) ;
 int lpfc_ct_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int,int) ;
 int lpfc_disc_start (struct lpfc_vport*) ;
 int lpfc_els_flush_rscn (struct lpfc_vport*) ;
 int lpfc_ns_cmd (struct lpfc_vport*,int ,scalar_t__,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,int,...) ;
 struct lpfc_nodelist* lpfc_setup_disc_node (struct lpfc_vport*,int) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_cmpl_ct_cmd_gff_id(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
   struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 IOCB_t *irsp = &rspiocb->iocb;
 struct lpfc_dmabuf *inp = (struct lpfc_dmabuf *) cmdiocb->context1;
 struct lpfc_dmabuf *outp = (struct lpfc_dmabuf *) cmdiocb->context2;
 struct lpfc_sli_ct_request *CTrsp;
 int did, rc, retry;
 uint8_t fbits;
 struct lpfc_nodelist *ndlp;

 did = ((struct lpfc_sli_ct_request *) inp->virt)->un.gff.PortId;
 did = be32_to_cpu(did);

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_CT,
  "GFF_ID cmpl:     status:x%x/x%x did:x%x",
  irsp->ulpStatus, irsp->un.ulpWord[4], did);

 if (irsp->ulpStatus == IOSTAT_SUCCESS) {

  CTrsp = (struct lpfc_sli_ct_request *) outp->virt;
  fbits = CTrsp->un.gff_acc.fbits[FCP_TYPE_FEATURE_OFFSET];

  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "6431 Process GFF_ID rsp for %08x "
     "fbits %02x %s %s\n",
     did, fbits,
     (fbits & FC4_FEATURE_INIT) ? "Initiator" : " ",
     (fbits & FC4_FEATURE_TARGET) ? "Target" : " ");

  if (CTrsp->CommandResponse.bits.CmdRsp ==
      be16_to_cpu(SLI_CT_RESPONSE_FS_ACC)) {
   if ((fbits & FC4_FEATURE_INIT) &&
       !(fbits & FC4_FEATURE_TARGET)) {
    lpfc_printf_vlog(vport, KERN_INFO,
       LOG_DISCOVERY,
       "0270 Skip x%x GFF "
       "NameServer Rsp Data: (init) "
       "x%x x%x\n", did, fbits,
       vport->fc_rscn_id_cnt);
    goto out;
   }
  }
 }
 else {

  if (cmdiocb->retry < LPFC_MAX_NS_RETRY) {
   retry = 1;
   if (irsp->ulpStatus == IOSTAT_LOCAL_REJECT) {
    switch ((irsp->un.ulpWord[4] &
     IOERR_PARAM_MASK)) {

    case 130:



     break;
    case 131:
    case 129:
    case 128:
     retry = 0;
     break;
    default:
     cmdiocb->retry++;
    }
   }
   else
    cmdiocb->retry++;

   if (retry) {

    rc = lpfc_ns_cmd(vport, SLI_CTNS_GFF_ID,
      cmdiocb->retry, did);
    if (rc == 0) {

     lpfc_ct_free_iocb(phba, cmdiocb);
     return;
    }
   }
  }
  lpfc_printf_vlog(vport, KERN_ERR, LOG_DISCOVERY,
     "0267 NameServer GFF Rsp "
     "x%x Error (%d %d) Data: x%x x%x\n",
     did, irsp->ulpStatus, irsp->un.ulpWord[4],
     vport->fc_flag, vport->fc_rscn_id_cnt);
 }


 ndlp = lpfc_setup_disc_node(vport, did);
 if (ndlp && NLP_CHK_NODE_ACT(ndlp)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "0242 Process x%x GFF "
     "NameServer Rsp Data: x%x x%x x%x\n",
     did, ndlp->nlp_flag, vport->fc_flag,
     vport->fc_rscn_id_cnt);
 } else {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "0243 Skip x%x GFF "
     "NameServer Rsp Data: x%x x%x\n", did,
     vport->fc_flag, vport->fc_rscn_id_cnt);
 }
out:

 if (vport->num_disc_nodes)
  vport->num_disc_nodes--;
 if (vport->num_disc_nodes == 0) {





  if (vport->port_state >= LPFC_DISC_AUTH) {
   if (vport->fc_flag & FC_RSCN_MODE) {
    lpfc_els_flush_rscn(vport);
    spin_lock_irq(shost->host_lock);
    vport->fc_flag |= FC_RSCN_MODE;
    spin_unlock_irq(shost->host_lock);
   }
   else
    lpfc_els_flush_rscn(vport);
  }
  lpfc_disc_start(vport);
 }
 lpfc_ct_free_iocb(phba, cmdiocb);
 return;
}
