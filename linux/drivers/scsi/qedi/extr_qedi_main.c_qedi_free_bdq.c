
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedi_ctx {TYPE_2__* bdq; TYPE_1__* pdev; int bdq_pbl_dma; scalar_t__ bdq_pbl; int bdq_pbl_mem_size; int bdq_pbl_list_dma; scalar_t__ bdq_pbl_list; } ;
struct TYPE_4__ {int buf_dma; scalar_t__ buf_addr; } ;
struct TYPE_3__ {int dev; } ;


 int QEDI_BDQ_BUF_SIZE ;
 int QEDI_BDQ_NUM ;
 int QEDI_PAGE_SIZE ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static void qedi_free_bdq(struct qedi_ctx *qedi)
{
 int i;

 if (qedi->bdq_pbl_list)
  dma_free_coherent(&qedi->pdev->dev, QEDI_PAGE_SIZE,
      qedi->bdq_pbl_list, qedi->bdq_pbl_list_dma);

 if (qedi->bdq_pbl)
  dma_free_coherent(&qedi->pdev->dev, qedi->bdq_pbl_mem_size,
      qedi->bdq_pbl, qedi->bdq_pbl_dma);

 for (i = 0; i < QEDI_BDQ_NUM; i++) {
  if (qedi->bdq[i].buf_addr) {
   dma_free_coherent(&qedi->pdev->dev, QEDI_BDQ_BUF_SIZE,
       qedi->bdq[i].buf_addr,
       qedi->bdq[i].buf_dma);
  }
 }
}
