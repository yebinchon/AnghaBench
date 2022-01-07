
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ioaccel2_sg_element {int dummy; } ;
struct io_accel2_cmd {TYPE_2__* sg; } ;
struct ctlr_info {TYPE_1__* pdev; struct ioaccel2_sg_element** ioaccel2_cmd_sg_list; } ;
struct CommandList {size_t cmdindex; } ;
struct TYPE_4__ {int address; int length; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int cpu_to_le64 (int ) ;
 int dma_map_single (int *,struct ioaccel2_sg_element*,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hpsa_map_ioaccel2_sg_chain_block(struct ctlr_info *h,
 struct io_accel2_cmd *cp, struct CommandList *c)
{
 struct ioaccel2_sg_element *chain_block;
 u64 temp64;
 u32 chain_size;

 chain_block = h->ioaccel2_cmd_sg_list[c->cmdindex];
 chain_size = le32_to_cpu(cp->sg[0].length);
 temp64 = dma_map_single(&h->pdev->dev, chain_block, chain_size,
    DMA_TO_DEVICE);
 if (dma_mapping_error(&h->pdev->dev, temp64)) {

  cp->sg->address = 0;
  return -1;
 }
 cp->sg->address = cpu_to_le64(temp64);
 return 0;
}
