
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct lpfc_iocbq {struct lpfc_io_buf* context1; int sli4_xritag; scalar_t__ sli4_lxritag; } ;
struct lpfc_io_buf {int list; int buf_lock; struct lpfc_iocbq cur_iocbq; int dma_handle; int dma_phys_sgl; scalar_t__ data; scalar_t__ dma_sgl; int dma_cmd_rsp_list; int dma_sgl_xtra_list; } ;
struct TYPE_2__ {scalar_t__ io_xri_cnt; int * xri_ids; } ;
struct lpfc_hba {int sli3_options; TYPE_1__ sli4_hba; int lpfc_sg_dma_buf_pool; int nvmet_support; scalar_t__ cfg_xpsgl; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LIST_HEAD (int ) ;
 int LOG_FCP ;
 int LOG_NVME ;
 int LOG_NVME_IOERR ;
 int LPFC_SLI3_BG_ENABLED ;
 scalar_t__ NO_XRI ;
 int SLI4_PAGE_SIZE ;
 int dma_pool_free (int ,scalar_t__,int ) ;
 scalar_t__ dma_pool_zalloc (int ,int ,int *) ;
 int kfree (struct lpfc_io_buf*) ;
 struct lpfc_io_buf* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 int lpfc_sli4_free_xri (struct lpfc_hba*,scalar_t__) ;
 scalar_t__ lpfc_sli4_next_xritag (struct lpfc_hba*) ;
 int lpfc_sli4_post_io_sgl_list (struct lpfc_hba*,int *,int) ;
 scalar_t__ lpfc_sli_next_iotag (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int nvme_nblist ;
 int post_nblist ;
 int prep_nblist ;
 int spin_lock_init (int *) ;

int
lpfc_new_io_buf(struct lpfc_hba *phba, int num_to_alloc)
{
 struct lpfc_io_buf *lpfc_ncmd;
 struct lpfc_iocbq *pwqeq;
 uint16_t iotag, lxri = 0;
 int bcnt, num_posted;
 LIST_HEAD(prep_nblist);
 LIST_HEAD(post_nblist);
 LIST_HEAD(nvme_nblist);

 phba->sli4_hba.io_xri_cnt = 0;
 for (bcnt = 0; bcnt < num_to_alloc; bcnt++) {
  lpfc_ncmd = kzalloc(sizeof(*lpfc_ncmd), GFP_KERNEL);
  if (!lpfc_ncmd)
   break;





  lpfc_ncmd->data = dma_pool_zalloc(phba->lpfc_sg_dma_buf_pool,
        GFP_KERNEL,
        &lpfc_ncmd->dma_handle);
  if (!lpfc_ncmd->data) {
   kfree(lpfc_ncmd);
   break;
  }

  if (phba->cfg_xpsgl && !phba->nvmet_support) {
   INIT_LIST_HEAD(&lpfc_ncmd->dma_sgl_xtra_list);
  } else {




   if ((phba->sli3_options & LPFC_SLI3_BG_ENABLED) &&
       (((unsigned long)(lpfc_ncmd->data) &
       (unsigned long)(SLI4_PAGE_SIZE - 1)) != 0)) {
    lpfc_printf_log(phba, KERN_ERR, LOG_FCP,
      "3369 Memory alignment err: "
      "addr=%lx\n",
      (unsigned long)lpfc_ncmd->data);
    dma_pool_free(phba->lpfc_sg_dma_buf_pool,
           lpfc_ncmd->data,
           lpfc_ncmd->dma_handle);
    kfree(lpfc_ncmd);
    break;
   }
  }

  INIT_LIST_HEAD(&lpfc_ncmd->dma_cmd_rsp_list);

  lxri = lpfc_sli4_next_xritag(phba);
  if (lxri == NO_XRI) {
   dma_pool_free(phba->lpfc_sg_dma_buf_pool,
          lpfc_ncmd->data, lpfc_ncmd->dma_handle);
   kfree(lpfc_ncmd);
   break;
  }
  pwqeq = &lpfc_ncmd->cur_iocbq;


  iotag = lpfc_sli_next_iotag(phba, pwqeq);
  if (iotag == 0) {
   dma_pool_free(phba->lpfc_sg_dma_buf_pool,
          lpfc_ncmd->data, lpfc_ncmd->dma_handle);
   kfree(lpfc_ncmd);
   lpfc_printf_log(phba, KERN_ERR, LOG_NVME_IOERR,
     "6121 Failed to allocate IOTAG for"
     " XRI:0x%x\n", lxri);
   lpfc_sli4_free_xri(phba, lxri);
   break;
  }
  pwqeq->sli4_lxritag = lxri;
  pwqeq->sli4_xritag = phba->sli4_hba.xri_ids[lxri];
  pwqeq->context1 = lpfc_ncmd;


  lpfc_ncmd->dma_sgl = lpfc_ncmd->data;
  lpfc_ncmd->dma_phys_sgl = lpfc_ncmd->dma_handle;
  lpfc_ncmd->cur_iocbq.context1 = lpfc_ncmd;
  spin_lock_init(&lpfc_ncmd->buf_lock);


  list_add_tail(&lpfc_ncmd->list, &post_nblist);
  phba->sli4_hba.io_xri_cnt++;
 }
 lpfc_printf_log(phba, KERN_INFO, LOG_NVME,
   "6114 Allocate %d out of %d requested new NVME "
   "buffers\n", bcnt, num_to_alloc);


 if (!list_empty(&post_nblist))
  num_posted = lpfc_sli4_post_io_sgl_list(
    phba, &post_nblist, bcnt);
 else
  num_posted = 0;

 return num_posted;
}
