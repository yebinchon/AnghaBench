
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_nvm_iscsi_image {int dummy; } ;
struct qedi_ctx {int nvm_buf_dma; scalar_t__ iscsi_image; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int,scalar_t__,int ) ;

__attribute__((used)) static void qedi_free_nvm_iscsi_cfg(struct qedi_ctx *qedi)
{
 if (qedi->iscsi_image)
  dma_free_coherent(&qedi->pdev->dev,
      sizeof(struct qedi_nvm_iscsi_image),
      qedi->iscsi_image, qedi->nvm_buf_dma);
}
