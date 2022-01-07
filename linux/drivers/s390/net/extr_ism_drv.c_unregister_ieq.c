
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ism_dev {scalar_t__ ieq_dma_addr; int * ieq; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ISM_ERROR ;
 int ISM_UNREG_IEQ ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,scalar_t__) ;
 int ism_cmd_simple (struct ism_dev*,int ) ;

__attribute__((used)) static int unregister_ieq(struct ism_dev *ism)
{
 int ret;

 if (!ism->ieq)
  return 0;

 ret = ism_cmd_simple(ism, ISM_UNREG_IEQ);
 if (ret && ret != ISM_ERROR)
  return -EIO;

 dma_free_coherent(&ism->pdev->dev, PAGE_SIZE,
     ism->ieq, ism->ieq_dma_addr);

 ism->ieq = ((void*)0);
 ism->ieq_dma_addr = 0;

 return 0;
}
