
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct lpfc_queue {int qe_valid; int hdwq; int chann; int wq_list; } ;
struct TYPE_4__ {int lpfc_wq_list; TYPE_1__* hdwq; int wq_ecount; int wq_esize; int cq_ecount; int cq_esize; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; scalar_t__ fcp_embed_io; scalar_t__ enab_exp_wqcq_pages; } ;
struct TYPE_3__ {struct lpfc_queue* io_wq; struct lpfc_queue* io_cq; } ;


 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_CQE_EXP_COUNT ;
 int LPFC_DEFAULT_PAGE_SIZE ;
 int LPFC_EXPANDED_PAGE_SIZE ;
 int LPFC_FIND_BY_HDWQ ;
 int LPFC_WQE128_SIZE ;
 int LPFC_WQE_EXP_COUNT ;
 int list_add_tail (int *,int *) ;
 int lpfc_find_cpu_handle (struct lpfc_hba*,int,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 struct lpfc_queue* lpfc_sli4_queue_alloc (struct lpfc_hba*,int ,int ,int ,int) ;

__attribute__((used)) static int
lpfc_alloc_io_wq_cq(struct lpfc_hba *phba, int idx)
{
 struct lpfc_queue *qdesc;
 u32 wqesize;
 int cpu;

 cpu = lpfc_find_cpu_handle(phba, idx, LPFC_FIND_BY_HDWQ);

 if (phba->enab_exp_wqcq_pages)

  qdesc = lpfc_sli4_queue_alloc(phba, LPFC_EXPANDED_PAGE_SIZE,
           phba->sli4_hba.cq_esize,
           LPFC_CQE_EXP_COUNT, cpu);

 else
  qdesc = lpfc_sli4_queue_alloc(phba, LPFC_DEFAULT_PAGE_SIZE,
           phba->sli4_hba.cq_esize,
           phba->sli4_hba.cq_ecount, cpu);
 if (!qdesc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "0499 Failed allocate fast-path IO CQ (%d)\n", idx);
  return 1;
 }
 qdesc->qe_valid = 1;
 qdesc->hdwq = idx;
 qdesc->chann = cpu;
 phba->sli4_hba.hdwq[idx].io_cq = qdesc;


 if (phba->enab_exp_wqcq_pages) {

  wqesize = (phba->fcp_embed_io) ?
   LPFC_WQE128_SIZE : phba->sli4_hba.wq_esize;
  qdesc = lpfc_sli4_queue_alloc(phba, LPFC_EXPANDED_PAGE_SIZE,
           wqesize,
           LPFC_WQE_EXP_COUNT, cpu);
 } else
  qdesc = lpfc_sli4_queue_alloc(phba, LPFC_DEFAULT_PAGE_SIZE,
           phba->sli4_hba.wq_esize,
           phba->sli4_hba.wq_ecount, cpu);

 if (!qdesc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0503 Failed allocate fast-path IO WQ (%d)\n",
    idx);
  return 1;
 }
 qdesc->hdwq = idx;
 qdesc->chann = cpu;
 phba->sli4_hba.hdwq[idx].io_wq = qdesc;
 list_add_tail(&qdesc->wq_list, &phba->sli4_hba.lpfc_wq_list);
 return 0;
}
