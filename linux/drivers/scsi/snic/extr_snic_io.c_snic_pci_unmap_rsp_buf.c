
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snic_sg_desc {scalar_t__ addr; int len; } ;
struct snic_req_info {int dummy; } ;
struct snic {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int SNIC_BUG_ON (int) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (scalar_t__) ;
 struct snic_sg_desc* req_to_sgl (int ) ;
 int rqi_to_req (struct snic_req_info*) ;

void
snic_pci_unmap_rsp_buf(struct snic *snic, struct snic_req_info *rqi)
{
 struct snic_sg_desc *sgd;

 sgd = req_to_sgl(rqi_to_req(rqi));
 SNIC_BUG_ON(sgd[0].addr == 0);
 dma_unmap_single(&snic->pdev->dev,
    le64_to_cpu(sgd[0].addr),
    le32_to_cpu(sgd[0].len),
    DMA_FROM_DEVICE);
}
