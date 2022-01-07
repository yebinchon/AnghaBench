
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


typedef void* uint8_t ;
struct TYPE_12__ {void* lsRjtRsnCodeExp; void* lsRjtRsnCode; } ;
struct TYPE_13__ {int lsRjtError; TYPE_5__ b; } ;
struct ls_rjt {TYPE_6__ un; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_rdp_context {int cmpl; int rx_id; int ox_id; int ndlp; } ;
struct lpfc_nodelist {int vport; } ;
struct TYPE_10__ {int ox_id; } ;
struct TYPE_11__ {TYPE_3__ rcvsli3; } ;
struct TYPE_14__ {int ulpContext; TYPE_4__ unsli3; } ;
struct lpfc_iocbq {TYPE_7__ iocb; scalar_t__ context2; } ;
struct TYPE_8__ {int sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hba_flag; TYPE_1__ sli4_hba; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_9__ {int length; int tag; int nport_id; } ;
struct fc_rdp_req_frame {TYPE_2__ nport_id_desc; int rdp_des_length; } ;
struct fc_rdp_nport_desc {int dummy; } ;
typedef int stat ;
typedef TYPE_7__ IOCB_t ;


 int GFP_KERNEL ;
 int HBA_FCOE_MODE ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_ELS ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ LPFC_SLI_REV4 ;
 void* LSEXP_NOTHING_MORE ;
 void* LSEXP_REQ_UNSUPPORTED ;
 void* LSRJT_LOGICAL_ERR ;
 void* LSRJT_UNABLE_TPC ;
 int RDP_NPORT_ID_SIZE ;
 int RDP_N_PORT_DESC_TAG ;
 int be32_to_cpu (int ) ;
 scalar_t__ bf_get (int ,int *) ;
 int kfree (struct lpfc_rdp_context*) ;
 struct lpfc_rdp_context* kzalloc (int,int ) ;
 int lpfc_els_rdp_cmpl ;
 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 scalar_t__ lpfc_get_rdp_info (struct lpfc_hba*,struct lpfc_rdp_context*) ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;
 int lpfc_sli_intf_if_type ;
 int memset (struct ls_rjt*,int ,int) ;

__attribute__((used)) static int
lpfc_els_rcv_rdp(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
  struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_dmabuf *pcmd;
 uint8_t rjt_err, rjt_expl = LSEXP_NOTHING_MORE;
 struct fc_rdp_req_frame *rdp_req;
 struct lpfc_rdp_context *rdp_context;
 IOCB_t *cmd = ((void*)0);
 struct ls_rjt stat;

 if (phba->sli_rev < LPFC_SLI_REV4 ||
     bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) <
      LPFC_SLI_INTF_IF_TYPE_2) {
  rjt_err = LSRJT_UNABLE_TPC;
  rjt_expl = LSEXP_REQ_UNSUPPORTED;
  goto error;
 }

 if (phba->sli_rev < LPFC_SLI_REV4 || (phba->hba_flag & HBA_FCOE_MODE)) {
  rjt_err = LSRJT_UNABLE_TPC;
  rjt_expl = LSEXP_REQ_UNSUPPORTED;
  goto error;
 }

 pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 rdp_req = (struct fc_rdp_req_frame *) pcmd->virt;

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "2422 ELS RDP Request "
    "dec len %d tag x%x port_id %d len %d\n",
    be32_to_cpu(rdp_req->rdp_des_length),
    be32_to_cpu(rdp_req->nport_id_desc.tag),
    be32_to_cpu(rdp_req->nport_id_desc.nport_id),
    be32_to_cpu(rdp_req->nport_id_desc.length));

 if (sizeof(struct fc_rdp_nport_desc) !=
   be32_to_cpu(rdp_req->rdp_des_length))
  goto rjt_logerr;
 if (RDP_N_PORT_DESC_TAG != be32_to_cpu(rdp_req->nport_id_desc.tag))
  goto rjt_logerr;
 if (RDP_NPORT_ID_SIZE !=
   be32_to_cpu(rdp_req->nport_id_desc.length))
  goto rjt_logerr;
 rdp_context = kzalloc(sizeof(struct lpfc_rdp_context), GFP_KERNEL);
 if (!rdp_context) {
  rjt_err = LSRJT_UNABLE_TPC;
  goto error;
 }

 cmd = &cmdiocb->iocb;
 rdp_context->ndlp = lpfc_nlp_get(ndlp);
 rdp_context->ox_id = cmd->unsli3.rcvsli3.ox_id;
 rdp_context->rx_id = cmd->ulpContext;
 rdp_context->cmpl = lpfc_els_rdp_cmpl;
 if (lpfc_get_rdp_info(phba, rdp_context)) {
  lpfc_printf_vlog(ndlp->vport, KERN_WARNING, LOG_ELS,
     "2423 Unable to send mailbox");
  kfree(rdp_context);
  rjt_err = LSRJT_UNABLE_TPC;
  lpfc_nlp_put(ndlp);
  goto error;
 }

 return 0;

rjt_logerr:
 rjt_err = LSRJT_LOGICAL_ERR;

error:
 memset(&stat, 0, sizeof(stat));
 stat.un.b.lsRjtRsnCode = rjt_err;
 stat.un.b.lsRjtRsnCodeExp = rjt_expl;
 lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb, ndlp, ((void*)0));
 return 1;
}
