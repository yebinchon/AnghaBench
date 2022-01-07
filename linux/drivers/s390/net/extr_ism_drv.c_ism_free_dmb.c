
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smcd_dmb {int dma_addr; int cpu_addr; int dmb_len; int sba_idx; } ;
struct ism_dev {TYPE_1__* pdev; int sba_bitmap; } ;
struct TYPE_2__ {int dev; } ;


 int clear_bit (int ,int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void ism_free_dmb(struct ism_dev *ism, struct smcd_dmb *dmb)
{
 clear_bit(dmb->sba_idx, ism->sba_bitmap);
 dma_free_coherent(&ism->pdev->dev, dmb->dmb_len,
     dmb->cpu_addr, dmb->dma_addr);
}
