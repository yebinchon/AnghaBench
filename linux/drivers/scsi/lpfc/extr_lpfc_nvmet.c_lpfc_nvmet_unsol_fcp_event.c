
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct rqb_dmabuf {int hbuf; } ;
struct lpfc_hba {scalar_t__ nvmet_support; } ;


 int lpfc_nvmet_unsol_fcp_buffer (struct lpfc_hba*,int ,struct rqb_dmabuf*,int ,int ) ;
 int lpfc_rq_buf_free (struct lpfc_hba*,int *) ;

void
lpfc_nvmet_unsol_fcp_event(struct lpfc_hba *phba,
      uint32_t idx,
      struct rqb_dmabuf *nvmebuf,
      uint64_t isr_timestamp,
      uint8_t cqflag)
{
 if (phba->nvmet_support == 0) {
  lpfc_rq_buf_free(phba, &nvmebuf->hbuf);
  return;
 }
 lpfc_nvmet_unsol_fcp_buffer(phba, idx, nvmebuf, isr_timestamp, cqflag);
}
