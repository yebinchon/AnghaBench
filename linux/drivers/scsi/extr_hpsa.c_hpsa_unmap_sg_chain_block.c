
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ctlr_info {int max_cmd_sg_entries; TYPE_2__* pdev; } ;
struct SGDescriptor {int Len; int Addr; } ;
struct TYPE_3__ {int SGTotal; } ;
struct CommandList {struct SGDescriptor* SG; TYPE_1__ Header; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void hpsa_unmap_sg_chain_block(struct ctlr_info *h,
 struct CommandList *c)
{
 struct SGDescriptor *chain_sg;

 if (le16_to_cpu(c->Header.SGTotal) <= h->max_cmd_sg_entries)
  return;

 chain_sg = &c->SG[h->max_cmd_sg_entries - 1];
 dma_unmap_single(&h->pdev->dev, le64_to_cpu(chain_sg->Addr),
   le32_to_cpu(chain_sg->Len), DMA_TO_DEVICE);
}
