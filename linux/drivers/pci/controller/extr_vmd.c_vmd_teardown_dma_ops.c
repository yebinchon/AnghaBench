
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_domain {int dummy; } ;
struct vmd_dev {TYPE_1__* dev; struct dma_domain dma_domain; } ;
struct TYPE_2__ {int dev; } ;


 int del_dma_domain (struct dma_domain*) ;
 scalar_t__ get_dma_ops (int *) ;

__attribute__((used)) static void vmd_teardown_dma_ops(struct vmd_dev *vmd)
{
 struct dma_domain *domain = &vmd->dma_domain;

 if (get_dma_ops(&vmd->dev->dev))
  del_dma_domain(domain);
}
