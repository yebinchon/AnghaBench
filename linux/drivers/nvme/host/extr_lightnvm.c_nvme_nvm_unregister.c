
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns {int ndev; } ;


 int nvm_unregister (int ) ;

void nvme_nvm_unregister(struct nvme_ns *ns)
{
 nvm_unregister(ns->ndev);
}
