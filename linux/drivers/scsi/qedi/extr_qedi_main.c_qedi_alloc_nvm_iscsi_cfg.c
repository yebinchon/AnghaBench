
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_nvm_iscsi_image {int dummy; } ;
struct qedi_ctx {int nvm_buf_dma; int iscsi_image; int dbg_ctx; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QEDI_ERR (int *,char*) ;
 int QEDI_INFO (int *,int ,char*,int ,int ) ;
 int QEDI_LOG_INFO ;
 int dma_alloc_coherent (int *,int,int *,int ) ;

__attribute__((used)) static int qedi_alloc_nvm_iscsi_cfg(struct qedi_ctx *qedi)
{
 qedi->iscsi_image = dma_alloc_coherent(&qedi->pdev->dev,
            sizeof(struct qedi_nvm_iscsi_image),
            &qedi->nvm_buf_dma, GFP_KERNEL);
 if (!qedi->iscsi_image) {
  QEDI_ERR(&qedi->dbg_ctx, "Could not allocate NVM BUF.\n");
  return -ENOMEM;
 }
 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO,
    "NVM BUF addr=0x%p dma=0x%llx.\n", qedi->iscsi_image,
    qedi->nvm_buf_dma);

 return 0;
}
