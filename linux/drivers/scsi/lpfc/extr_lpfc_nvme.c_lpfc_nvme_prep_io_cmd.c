
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


struct TYPE_16__ {int abort_tag; } ;
struct TYPE_12__ {TYPE_8__ wqe_com; } ;
struct TYPE_10__ {scalar_t__ total_xfer_len; scalar_t__ rsrvd5; } ;
struct TYPE_9__ {scalar_t__ total_xfer_len; scalar_t__ initial_xfer_len; } ;
union lpfc_wqe128 {TYPE_4__ generic; TYPE_8__ fcp_icmd; int * words; TYPE_2__ fcp_iread; TYPE_1__ fcp_iwrite; } ;
typedef scalar_t__ uint32_t ;
struct nvmefc_fcp_req {scalar_t__ io_dir; scalar_t__ payload_length; int rsplen; int cmdlen; scalar_t__ sg_cnt; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nvme_fb_size; int nlp_nvme_info; size_t nlp_rpi; } ;
struct lpfc_iocbq {int sli4_xritag; int iotag; struct lpfc_vport* vport; union lpfc_wqe128 wqe; } ;
struct lpfc_io_buf {struct nvmefc_fcp_req* nvmeCmd; struct lpfc_iocbq cur_iocbq; } ;
struct TYPE_11__ {int* rpi_ids; } ;
struct lpfc_hba {TYPE_3__ sli4_hba; scalar_t__ cfg_nvme_enable_fb; } ;
struct lpfc_fc4_ctrl_stat {int control_requests; int input_requests; int output_requests; } ;
struct TYPE_15__ {int * words; } ;
struct TYPE_14__ {int * words; } ;
struct TYPE_13__ {int * words; } ;


 int EINVAL ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_FIRSTBURST ;
 int NLP_NVME_NSLER ;
 scalar_t__ NVMEFC_FCP_WRITE ;
 int bf_set (int ,TYPE_8__*,int) ;
 TYPE_7__ lpfc_icmnd_cmd_template ;
 TYPE_6__ lpfc_iread_cmd_template ;
 TYPE_5__ lpfc_iwrite_cmd_template ;
 int memcpy (int *,int *,int) ;
 int payload_offset_len ;
 int wqe_ctxt_tag ;
 int wqe_erp ;
 int wqe_reqtag ;
 int wqe_xri_tag ;

__attribute__((used)) static int
lpfc_nvme_prep_io_cmd(struct lpfc_vport *vport,
        struct lpfc_io_buf *lpfc_ncmd,
        struct lpfc_nodelist *pnode,
        struct lpfc_fc4_ctrl_stat *cstat)
{
 struct lpfc_hba *phba = vport->phba;
 struct nvmefc_fcp_req *nCmd = lpfc_ncmd->nvmeCmd;
 struct lpfc_iocbq *pwqeq = &(lpfc_ncmd->cur_iocbq);
 union lpfc_wqe128 *wqe = &pwqeq->wqe;
 uint32_t req_len;

 if (!NLP_CHK_NODE_ACT(pnode))
  return -EINVAL;





 if (nCmd->sg_cnt) {
  if (nCmd->io_dir == NVMEFC_FCP_WRITE) {

   memcpy(&wqe->words[7],
          &lpfc_iwrite_cmd_template.words[7],
          sizeof(uint32_t) * 5);


   wqe->fcp_iwrite.total_xfer_len = nCmd->payload_length;


   if ((phba->cfg_nvme_enable_fb) &&
       (pnode->nlp_flag & NLP_FIRSTBURST)) {
    req_len = lpfc_ncmd->nvmeCmd->payload_length;
    if (req_len < pnode->nvme_fb_size)
     wqe->fcp_iwrite.initial_xfer_len =
      req_len;
    else
     wqe->fcp_iwrite.initial_xfer_len =
      pnode->nvme_fb_size;
   } else {
    wqe->fcp_iwrite.initial_xfer_len = 0;
   }
   cstat->output_requests++;
  } else {

   memcpy(&wqe->words[7],
          &lpfc_iread_cmd_template.words[7],
          sizeof(uint32_t) * 5);


   wqe->fcp_iread.total_xfer_len = nCmd->payload_length;


   wqe->fcp_iread.rsrvd5 = 0;

   cstat->input_requests++;
  }
 } else {

  memcpy(&wqe->words[4], &lpfc_icmnd_cmd_template.words[4],
         sizeof(uint32_t) * 8);
  cstat->control_requests++;
 }

 if (pnode->nlp_nvme_info & NLP_NVME_NSLER)
  bf_set(wqe_erp, &wqe->generic.wqe_com, 1);






 bf_set(payload_offset_len, &wqe->fcp_icmd,
        (nCmd->rsplen + nCmd->cmdlen));


 bf_set(wqe_ctxt_tag, &wqe->generic.wqe_com,
        phba->sli4_hba.rpi_ids[pnode->nlp_rpi]);
 bf_set(wqe_xri_tag, &wqe->generic.wqe_com, pwqeq->sli4_xritag);


 wqe->generic.wqe_com.abort_tag = pwqeq->iotag;


 bf_set(wqe_reqtag, &wqe->generic.wqe_com, pwqeq->iotag);



 pwqeq->vport = vport;
 return 0;
}
