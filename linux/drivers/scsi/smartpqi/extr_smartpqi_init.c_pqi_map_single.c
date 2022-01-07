
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pqi_sg_descriptor {int flags; int length; int address; } ;
struct pci_dev {int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 size_t CISS_SG_LAST ;
 int DMA_NONE ;
 int ENOMEM ;
 scalar_t__ dma_map_single (int *,void*,size_t,int) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int put_unaligned_le32 (size_t,int *) ;
 int put_unaligned_le64 (int ,int *) ;

__attribute__((used)) static int pqi_map_single(struct pci_dev *pci_dev,
 struct pqi_sg_descriptor *sg_descriptor, void *buffer,
 size_t buffer_length, enum dma_data_direction data_direction)
{
 dma_addr_t bus_address;

 if (!buffer || buffer_length == 0 || data_direction == DMA_NONE)
  return 0;

 bus_address = dma_map_single(&pci_dev->dev, buffer, buffer_length,
  data_direction);
 if (dma_mapping_error(&pci_dev->dev, bus_address))
  return -ENOMEM;

 put_unaligned_le64((u64)bus_address, &sg_descriptor->address);
 put_unaligned_le32(buffer_length, &sg_descriptor->length);
 put_unaligned_le32(CISS_SG_LAST, &sg_descriptor->flags);

 return 0;
}
