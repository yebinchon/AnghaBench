
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_sg_descriptor {int length; int address; } ;
struct pci_dev {int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int DMA_NONE ;
 int dma_unmap_single (int *,int ,int ,int) ;
 int get_unaligned_le32 (int *) ;
 scalar_t__ get_unaligned_le64 (int *) ;

__attribute__((used)) static void pqi_pci_unmap(struct pci_dev *pci_dev,
 struct pqi_sg_descriptor *descriptors, int num_descriptors,
 enum dma_data_direction data_direction)
{
 int i;

 if (data_direction == DMA_NONE)
  return;

 for (i = 0; i < num_descriptors; i++)
  dma_unmap_single(&pci_dev->dev,
   (dma_addr_t)get_unaligned_le64(&descriptors[i].address),
   get_unaligned_le32(&descriptors[i].length),
   data_direction);
}
