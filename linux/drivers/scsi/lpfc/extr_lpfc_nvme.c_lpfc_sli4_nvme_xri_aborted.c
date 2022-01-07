
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct sli4_wcqe_xri_aborted {int dummy; } ;
struct nvmefc_fcp_req {int (* done ) (struct nvmefc_fcp_req*) ;} ;
struct lpfc_nodelist {int dummy; } ;
struct TYPE_2__ {int iotag; } ;
struct lpfc_io_buf {struct nvmefc_fcp_req* nvmeCmd; TYPE_1__ cur_iocbq; struct lpfc_nodelist* ndlp; } ;
struct lpfc_hba {int dummy; } ;


 int KERN_INFO ;
 int LOG_NVME_ABTS ;
 int bf_get (int ,struct sli4_wcqe_xri_aborted*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,struct nvmefc_fcp_req*,int ,int ) ;
 int lpfc_release_nvme_buf (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_sli4_abts_err_handler (struct lpfc_hba*,struct lpfc_nodelist*,struct sli4_wcqe_xri_aborted*) ;
 int lpfc_wcqe_xa_xri ;
 int stub1 (struct nvmefc_fcp_req*) ;

void
lpfc_sli4_nvme_xri_aborted(struct lpfc_hba *phba,
      struct sli4_wcqe_xri_aborted *axri,
      struct lpfc_io_buf *lpfc_ncmd)
{
 uint16_t xri = bf_get(lpfc_wcqe_xa_xri, axri);
 struct nvmefc_fcp_req *nvme_cmd = ((void*)0);
 struct lpfc_nodelist *ndlp = lpfc_ncmd->ndlp;


 if (ndlp)
  lpfc_sli4_abts_err_handler(phba, ndlp, axri);

 lpfc_printf_log(phba, KERN_INFO, LOG_NVME_ABTS,
   "6311 nvme_cmd %p xri x%x tag x%x abort complete and "
   "xri released\n",
   lpfc_ncmd->nvmeCmd, xri,
   lpfc_ncmd->cur_iocbq.iotag);





 if (lpfc_ncmd->nvmeCmd) {
  nvme_cmd = lpfc_ncmd->nvmeCmd;
  nvme_cmd->done(nvme_cmd);
  lpfc_ncmd->nvmeCmd = ((void*)0);
 }
 lpfc_release_nvme_buf(phba, lpfc_ncmd);
}
