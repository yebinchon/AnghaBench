
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_mbox_ext_buf_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int ext_dmabuf_list; int mbx_dmabuf; } ;
struct lpfc_hba {TYPE_1__ mbox_ext_buf_ctx; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ LPFC_BSG_MBOX_IDLE ;
 int lpfc_bsg_dma_page_free (struct lpfc_hba*,int ) ;
 int lpfc_bsg_dma_page_list_free (struct lpfc_hba*,int *) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void
lpfc_bsg_mbox_ext_session_reset(struct lpfc_hba *phba)
{
 if (phba->mbox_ext_buf_ctx.state == LPFC_BSG_MBOX_IDLE)
  return;


 lpfc_bsg_dma_page_list_free(phba,
        &phba->mbox_ext_buf_ctx.ext_dmabuf_list);
 lpfc_bsg_dma_page_free(phba, phba->mbox_ext_buf_ctx.mbx_dmabuf);

 memset((char *)&phba->mbox_ext_buf_ctx, 0,
        sizeof(struct lpfc_mbox_ext_buf_ctx));
 INIT_LIST_HEAD(&phba->mbox_ext_buf_ctx.ext_dmabuf_list);

 return;
}
