
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union lpfc_wqe128 {int dummy; } lpfc_wqe128 ;
typedef union lpfc_wqe {int dummy; } lpfc_wqe ;
struct sli4_sge {int word2; } ;
struct lpfc_sli4_hdw_queue {int empty_io_bufs; } ;
struct lpfc_nodelist {int cmd_pending; } ;
struct lpfc_iocbq {int wqe_cmpl; int iocb_flag; union lpfc_wqe128 wqe; } ;
struct lpfc_io_buf {int flags; struct sli4_sge* dma_sgl; int start_time; struct lpfc_iocbq cur_iocbq; } ;
struct TYPE_2__ {struct lpfc_sli4_hdw_queue* hdwq; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;


 int LPFC_IO_NVME ;
 int LPFC_SBUF_BUMP_QDEPTH ;
 int LPFC_SGE_TYPE_SKIP ;
 int atomic_inc (int *) ;
 int bf_set (int ,struct sli4_sge*,int ) ;
 int cpu_to_le32 (int ) ;
 int jiffies ;
 struct lpfc_io_buf* lpfc_get_io_buf (struct lpfc_hba*,int *,int,int) ;
 scalar_t__ lpfc_ndlp_check_qdepth (struct lpfc_hba*,struct lpfc_nodelist*) ;
 int lpfc_nvme_io_cmd_wqe_cmpl ;
 int lpfc_sli4_sge_last ;
 int lpfc_sli4_sge_type ;
 int memset (union lpfc_wqe128*,int ,int) ;

__attribute__((used)) static struct lpfc_io_buf *
lpfc_get_nvme_buf(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp,
    int idx, int expedite)
{
 struct lpfc_io_buf *lpfc_ncmd;
 struct lpfc_sli4_hdw_queue *qp;
 struct sli4_sge *sgl;
 struct lpfc_iocbq *pwqeq;
 union lpfc_wqe128 *wqe;

 lpfc_ncmd = lpfc_get_io_buf(phba, ((void*)0), idx, expedite);

 if (lpfc_ncmd) {
  pwqeq = &(lpfc_ncmd->cur_iocbq);
  wqe = &pwqeq->wqe;




  pwqeq->iocb_flag = LPFC_IO_NVME;
  pwqeq->wqe_cmpl = lpfc_nvme_io_cmd_wqe_cmpl;
  lpfc_ncmd->start_time = jiffies;
  lpfc_ncmd->flags = 0;





  sgl = lpfc_ncmd->dma_sgl;
  bf_set(lpfc_sli4_sge_type, sgl, LPFC_SGE_TYPE_SKIP);
  bf_set(lpfc_sli4_sge_last, sgl, 0);
  sgl->word2 = cpu_to_le32(sgl->word2);



  memset(wqe, 0, sizeof(union lpfc_wqe));

  if (lpfc_ndlp_check_qdepth(phba, ndlp)) {
   atomic_inc(&ndlp->cmd_pending);
   lpfc_ncmd->flags |= LPFC_SBUF_BUMP_QDEPTH;
  }

 } else {
  qp = &phba->sli4_hba.hdwq[idx];
  qp->empty_io_bufs++;
 }

 return lpfc_ncmd;
}
