
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct lpfc_vport {void* fdmi_port_mask; int port_type; void* fdmi_hba_mask; } ;
struct TYPE_5__ {scalar_t__ CmdRsp; } ;
struct TYPE_6__ {TYPE_1__ bits; } ;
struct lpfc_sli_ct_request {TYPE_2__ CommandResponse; } ;
struct lpfc_nodelist {int dummy; } ;
struct TYPE_7__ {int* ulpWord; } ;
struct TYPE_8__ {scalar_t__ ulpStatus; TYPE_3__ un; } ;
struct lpfc_iocbq {int retry; TYPE_4__ iocb; struct lpfc_dmabuf* context2; struct lpfc_dmabuf* context1; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {struct lpfc_sli_ct_request* virt; } ;
typedef TYPE_4__ IOCB_t ;


 int FDMI_DID ;
 int IOCB_ERROR ;




 int IOERR_PARAM_MASK ;


 scalar_t__ IOSTAT_LOCAL_REJECT ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LPFC_DISC_TRC_CT ;
 int LPFC_ELS_RING ;
 void* LPFC_FDMI1_HBA_ATTR ;
 void* LPFC_FDMI1_PORT_ATTR ;
 void* LPFC_FDMI2_HBA_ATTR ;
 void* LPFC_FDMI2_PORT_ATTR ;
 void* LPFC_FDMI2_SMART_ATTR ;
 int LPFC_FDMI_MAX_RETRY ;
 int LPFC_PHYSICAL_PORT ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int SLI_CT_RESPONSE_FS_RJT ;





 int be16_to_cpu (scalar_t__) ;
 scalar_t__ cpu_to_be16 (int ) ;
 int lpfc_ct_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,scalar_t__,int,int) ;
 int lpfc_els_chk_latt (struct lpfc_vport*) ;
 int lpfc_fdmi_cmd (struct lpfc_vport*,struct lpfc_nodelist*,int const,int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,...) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;

__attribute__((used)) static void
lpfc_cmpl_ct_disc_fdmi(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
         struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 struct lpfc_dmabuf *inp = cmdiocb->context1;
 struct lpfc_dmabuf *outp = cmdiocb->context2;
 struct lpfc_sli_ct_request *CTcmd = inp->virt;
 struct lpfc_sli_ct_request *CTrsp = outp->virt;
 uint16_t fdmi_cmd = CTcmd->CommandResponse.bits.CmdRsp;
 uint16_t fdmi_rsp = CTrsp->CommandResponse.bits.CmdRsp;
 IOCB_t *irsp = &rspiocb->iocb;
 struct lpfc_nodelist *ndlp;
 uint32_t latt, cmd, err;

 latt = lpfc_els_chk_latt(vport);
 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_CT,
  "FDMI cmpl:       status:x%x/x%x latt:%d",
  irsp->ulpStatus, irsp->un.ulpWord[4], latt);

 if (latt || irsp->ulpStatus) {


  if (irsp->ulpStatus == IOSTAT_LOCAL_REJECT) {
   switch ((irsp->un.ulpWord[4] & IOERR_PARAM_MASK)) {
   case 133:
   case 138:
   case 134:
   case 136:
   case 135:
   case 137:
    cmdiocb->retry++;
    if (cmdiocb->retry >= LPFC_FDMI_MAX_RETRY)
     break;


    err = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING,
         cmdiocb, 0);
    if (err == IOCB_ERROR)
     break;
    return;
   default:
    break;
   }
  }

  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "0229 FDMI cmd %04x failed, latt = %d "
     "ulpStatus: x%x, rid x%x\n",
     be16_to_cpu(fdmi_cmd), latt, irsp->ulpStatus,
     irsp->un.ulpWord[4]);
 }
 lpfc_ct_free_iocb(phba, cmdiocb);

 ndlp = lpfc_findnode_did(vport, FDMI_DID);
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp))
  return;


 cmd = be16_to_cpu(fdmi_cmd);
 if (fdmi_rsp == cpu_to_be16(SLI_CT_RESPONSE_FS_RJT)) {

  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "0220 FDMI cmd failed FS_RJT Data: x%x", cmd);


  switch (cmd) {
  case 130:
   if (vport->fdmi_hba_mask == LPFC_FDMI2_HBA_ATTR) {

    vport->fdmi_hba_mask = LPFC_FDMI1_HBA_ATTR;
    vport->fdmi_port_mask = LPFC_FDMI1_PORT_ATTR;

    lpfc_fdmi_cmd(vport, ndlp, 132, 0);
   }
   return;

  case 128:
   if (vport->fdmi_port_mask == LPFC_FDMI2_PORT_ATTR) {

    vport->fdmi_port_mask = LPFC_FDMI1_PORT_ATTR;

    lpfc_fdmi_cmd(vport, ndlp, cmd, 0);
   }
   if (vport->fdmi_port_mask == LPFC_FDMI2_SMART_ATTR) {
    vport->fdmi_port_mask = LPFC_FDMI2_PORT_ATTR;

    lpfc_fdmi_cmd(vport, ndlp, cmd, 0);
   }
   return;

  case 129:
   if (vport->fdmi_port_mask == LPFC_FDMI2_PORT_ATTR) {

    vport->fdmi_hba_mask = LPFC_FDMI1_HBA_ATTR;
    vport->fdmi_port_mask = LPFC_FDMI1_PORT_ATTR;

    lpfc_fdmi_cmd(vport, ndlp, 132, 0);
   }
   if (vport->fdmi_port_mask == LPFC_FDMI2_SMART_ATTR) {
    vport->fdmi_port_mask = LPFC_FDMI2_PORT_ATTR;

    lpfc_fdmi_cmd(vport, ndlp, cmd, 0);
   }
   return;
  }
 }






 switch (cmd) {
 case 130:
  lpfc_fdmi_cmd(vport, ndlp, 129, 0);
  break;

 case 132:
  lpfc_fdmi_cmd(vport, ndlp, 131, 0);
  break;

 case 131:
  if (vport->port_type == LPFC_PHYSICAL_PORT)
   lpfc_fdmi_cmd(vport, ndlp, 130, 0);
  else
   lpfc_fdmi_cmd(vport, ndlp, 128, 0);
  break;
 }
 return;
}
