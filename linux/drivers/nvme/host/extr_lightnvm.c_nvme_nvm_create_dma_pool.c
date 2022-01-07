
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_ns {TYPE_2__* ctrl; } ;
struct nvm_dev {TYPE_1__* q; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct nvme_ns* queuedata; } ;


 int PAGE_SIZE ;
 void* dma_pool_create (char*,int ,int,int ,int ) ;

__attribute__((used)) static void *nvme_nvm_create_dma_pool(struct nvm_dev *nvmdev, char *name,
     int size)
{
 struct nvme_ns *ns = nvmdev->q->queuedata;

 return dma_pool_create(name, ns->ctrl->dev, size, PAGE_SIZE, 0);
}
