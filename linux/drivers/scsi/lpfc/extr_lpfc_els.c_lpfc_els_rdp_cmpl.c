
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {int bdeSize; scalar_t__ bdeFlags; } ;
struct TYPE_9__ {int w; TYPE_7__ f; } ;
struct ulp_bde64 {TYPE_1__ tus; } ;
struct TYPE_10__ {int lsRjtRsnCode; } ;
struct TYPE_11__ {TYPE_2__ b; } ;
struct ls_rjt {TYPE_3__ un; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_rdp_context {int ox_id; int rx_id; int page_a0; scalar_t__ page_a2; int link_stat; struct lpfc_nodelist* ndlp; } ;
struct lpfc_nodelist {int nlp_DID; int nlp_rpi; int nlp_state; int nlp_flag; struct lpfc_vport* vport; } ;
struct TYPE_13__ {int ox_id; } ;
struct TYPE_14__ {TYPE_5__ rcvsli3; } ;
struct TYPE_16__ {TYPE_6__ unsli3; int ulpContext; } ;
struct lpfc_iocbq {void* iocb_cmpl; scalar_t__ context2; TYPE_8__ iocb; scalar_t__ context3; int iotag; } ;
struct TYPE_12__ {int elsXmitLSRJT; int elsXmitACC; } ;
struct lpfc_hba {TYPE_4__ fc_stat; int sfp_warning; int sfp_alarm; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct fc_rdp_sfp_desc {int dummy; } ;
struct fc_rdp_res_frame {int length; } ;
struct fc_rdp_port_speed_desc {int dummy; } ;
struct fc_rdp_port_name_desc {int dummy; } ;
struct fc_rdp_opd_sfp_desc {int dummy; } ;
struct fc_rdp_oed_sfp_desc {int dummy; } ;
struct fc_rdp_link_service_desc {int dummy; } ;
struct fc_rdp_link_error_status_desc {int dummy; } ;
struct fc_rdp_bbc_desc {int dummy; } ;
struct fc_fec_rdp_desc {int dummy; } ;
typedef TYPE_8__ IOCB_t ;


 int ELS_CMD_ACC ;
 int ELS_CMD_LS_RJT ;
 int ELS_CMD_RDP ;
 int IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_ELS_RING ;
 int LSRJT_UNABLE_TPC ;
 scalar_t__ SSF_ALARM_FLAGS ;
 scalar_t__ SSF_WARNING_FLAGS ;
 int SUCCESS ;
 int cpu_to_be32 (int) ;
 int kfree (struct lpfc_rdp_context*) ;
 int le32_to_cpu (int ) ;
 void* lpfc_cmpl_els_rsp ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_max_els_tries ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int ,int,int ,struct lpfc_nodelist*,int ,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ lpfc_rdp_res_attach_port_names (struct fc_rdp_port_name_desc*,struct lpfc_vport*,struct lpfc_nodelist*) ;
 scalar_t__ lpfc_rdp_res_bbc_desc (struct fc_rdp_bbc_desc*,int *,struct lpfc_vport*) ;
 scalar_t__ lpfc_rdp_res_diag_port_names (struct fc_rdp_port_name_desc*,struct lpfc_vport*) ;
 scalar_t__ lpfc_rdp_res_fec_desc (struct fc_fec_rdp_desc*,int *) ;
 scalar_t__ lpfc_rdp_res_link_error (struct fc_rdp_link_error_status_desc*,int *) ;
 scalar_t__ lpfc_rdp_res_link_service (struct fc_rdp_link_service_desc*,int ) ;
 scalar_t__ lpfc_rdp_res_oed_rxpower_desc (struct lpfc_hba*,struct fc_rdp_oed_sfp_desc*,scalar_t__) ;
 scalar_t__ lpfc_rdp_res_oed_temp_desc (struct lpfc_hba*,struct fc_rdp_oed_sfp_desc*,scalar_t__) ;
 scalar_t__ lpfc_rdp_res_oed_txbias_desc (struct lpfc_hba*,struct fc_rdp_oed_sfp_desc*,scalar_t__) ;
 scalar_t__ lpfc_rdp_res_oed_txpower_desc (struct lpfc_hba*,struct fc_rdp_oed_sfp_desc*,scalar_t__) ;
 scalar_t__ lpfc_rdp_res_oed_voltage_desc (struct lpfc_hba*,struct fc_rdp_oed_sfp_desc*,scalar_t__) ;
 scalar_t__ lpfc_rdp_res_opd_desc (struct fc_rdp_opd_sfp_desc*,int ,struct lpfc_vport*) ;
 scalar_t__ lpfc_rdp_res_sfp_desc (struct fc_rdp_sfp_desc*,int ,scalar_t__) ;
 scalar_t__ lpfc_rdp_res_speed (struct fc_rdp_port_speed_desc*,struct lpfc_hba*) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
lpfc_els_rdp_cmpl(struct lpfc_hba *phba, struct lpfc_rdp_context *rdp_context,
  int status)
{
 struct lpfc_nodelist *ndlp = rdp_context->ndlp;
 struct lpfc_vport *vport = ndlp->vport;
 struct lpfc_iocbq *elsiocb;
 struct ulp_bde64 *bpl;
 IOCB_t *icmd;
 uint8_t *pcmd;
 struct ls_rjt *stat;
 struct fc_rdp_res_frame *rdp_res;
 uint32_t cmdsize, len;
 uint16_t *flag_ptr;
 int rc;

 if (status != SUCCESS)
  goto error;


 cmdsize = sizeof(struct fc_rdp_res_frame);

 elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize,
   lpfc_max_els_tries, rdp_context->ndlp,
   rdp_context->ndlp->nlp_DID, ELS_CMD_ACC);
 lpfc_nlp_put(ndlp);
 if (!elsiocb)
  goto free_rdp_context;

 icmd = &elsiocb->iocb;
 icmd->ulpContext = rdp_context->rx_id;
 icmd->unsli3.rcvsli3.ox_id = rdp_context->ox_id;

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
   "2171 Xmit RDP response tag x%x xri x%x, "
   "did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x",
   elsiocb->iotag, elsiocb->iocb.ulpContext,
   ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
   ndlp->nlp_rpi);
 rdp_res = (struct fc_rdp_res_frame *)
  (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
 memset(pcmd, 0, sizeof(struct fc_rdp_res_frame));
 *((uint32_t *) (pcmd)) = ELS_CMD_ACC;


 flag_ptr = (uint16_t *)(rdp_context->page_a2 + SSF_ALARM_FLAGS);
 phba->sfp_alarm |= *flag_ptr;
 flag_ptr = (uint16_t *)(rdp_context->page_a2 + SSF_WARNING_FLAGS);
 phba->sfp_warning |= *flag_ptr;


 len = 8;
 len += lpfc_rdp_res_link_service((struct fc_rdp_link_service_desc *)
      (len + pcmd), ELS_CMD_RDP);

 len += lpfc_rdp_res_sfp_desc((struct fc_rdp_sfp_desc *)(len + pcmd),
   rdp_context->page_a0, rdp_context->page_a2);
 len += lpfc_rdp_res_speed((struct fc_rdp_port_speed_desc *)(len + pcmd),
      phba);
 len += lpfc_rdp_res_link_error((struct fc_rdp_link_error_status_desc *)
           (len + pcmd), &rdp_context->link_stat);
 len += lpfc_rdp_res_diag_port_names((struct fc_rdp_port_name_desc *)
          (len + pcmd), vport);
 len += lpfc_rdp_res_attach_port_names((struct fc_rdp_port_name_desc *)
     (len + pcmd), vport, ndlp);
 len += lpfc_rdp_res_fec_desc((struct fc_fec_rdp_desc *)(len + pcmd),
   &rdp_context->link_stat);
 len += lpfc_rdp_res_bbc_desc((struct fc_rdp_bbc_desc *)(len + pcmd),
         &rdp_context->link_stat, vport);
 len += lpfc_rdp_res_oed_temp_desc(phba,
    (struct fc_rdp_oed_sfp_desc *)(len + pcmd),
    rdp_context->page_a2);
 len += lpfc_rdp_res_oed_voltage_desc(phba,
    (struct fc_rdp_oed_sfp_desc *)(len + pcmd),
    rdp_context->page_a2);
 len += lpfc_rdp_res_oed_txbias_desc(phba,
    (struct fc_rdp_oed_sfp_desc *)(len + pcmd),
    rdp_context->page_a2);
 len += lpfc_rdp_res_oed_txpower_desc(phba,
    (struct fc_rdp_oed_sfp_desc *)(len + pcmd),
    rdp_context->page_a2);
 len += lpfc_rdp_res_oed_rxpower_desc(phba,
    (struct fc_rdp_oed_sfp_desc *)(len + pcmd),
    rdp_context->page_a2);
 len += lpfc_rdp_res_opd_desc((struct fc_rdp_opd_sfp_desc *)(len + pcmd),
         rdp_context->page_a0, vport);

 rdp_res->length = cpu_to_be32(len - 8);
 elsiocb->iocb_cmpl = lpfc_cmpl_els_rsp;


 bpl = (struct ulp_bde64 *)
  (((struct lpfc_dmabuf *)(elsiocb->context3))->virt);
 bpl->tus.f.bdeSize = len;
 bpl->tus.f.bdeFlags = 0;
 bpl->tus.w = le32_to_cpu(bpl->tus.w);

 phba->fc_stat.elsXmitACC++;
 rc = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0);
 if (rc == IOCB_ERROR)
  lpfc_els_free_iocb(phba, elsiocb);

 kfree(rdp_context);

 return;
error:
 cmdsize = 2 * sizeof(uint32_t);
 elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize, lpfc_max_els_tries,
   ndlp, ndlp->nlp_DID, ELS_CMD_LS_RJT);
 lpfc_nlp_put(ndlp);
 if (!elsiocb)
  goto free_rdp_context;

 icmd = &elsiocb->iocb;
 icmd->ulpContext = rdp_context->rx_id;
 icmd->unsli3.rcvsli3.ox_id = rdp_context->ox_id;
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

 *((uint32_t *) (pcmd)) = ELS_CMD_LS_RJT;
 stat = (struct ls_rjt *)(pcmd + sizeof(uint32_t));
 stat->un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;

 phba->fc_stat.elsXmitLSRJT++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_rsp;
 rc = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0);

 if (rc == IOCB_ERROR)
  lpfc_els_free_iocb(phba, elsiocb);
free_rdp_context:
 kfree(rdp_context);
}
