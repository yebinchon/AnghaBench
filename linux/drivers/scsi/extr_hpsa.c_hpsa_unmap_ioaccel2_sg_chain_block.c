
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ioaccel2_sg_element {int length; int address; } ;
struct io_accel2_cmd {struct ioaccel2_sg_element* sg; } ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void hpsa_unmap_ioaccel2_sg_chain_block(struct ctlr_info *h,
 struct io_accel2_cmd *cp)
{
 struct ioaccel2_sg_element *chain_sg;
 u64 temp64;
 u32 chain_size;

 chain_sg = cp->sg;
 temp64 = le64_to_cpu(chain_sg->address);
 chain_size = le32_to_cpu(cp->sg[0].length);
 dma_unmap_single(&h->pdev->dev, temp64, chain_size, DMA_TO_DEVICE);
}
