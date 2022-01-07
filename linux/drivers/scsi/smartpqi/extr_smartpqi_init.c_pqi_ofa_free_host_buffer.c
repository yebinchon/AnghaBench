
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_sg_descriptor {int address; int length; } ;
struct pqi_ofa_memory {int num_memory_descriptors; struct pqi_sg_descriptor* sg_descriptor; int bytes_allocated; } ;
struct pqi_ctrl_info {struct pqi_ofa_memory* pqi_ofa_mem_virt_addr; int pqi_ofa_mem_dma_handle; TYPE_1__* pci_dev; struct pqi_ofa_memory** pqi_ofa_chunk_virt_addr; } ;
struct TYPE_2__ {int dev; } ;


 int PQI_OFA_MEMORY_DESCRIPTOR_LENGTH ;
 int dma_free_coherent (int *,int ,struct pqi_ofa_memory*,int ) ;
 int get_unaligned_le16 (int *) ;
 int get_unaligned_le32 (int *) ;
 int get_unaligned_le64 (int *) ;
 int kfree (struct pqi_ofa_memory**) ;

__attribute__((used)) static void pqi_ofa_free_host_buffer(struct pqi_ctrl_info *ctrl_info)
{
 int i;
 struct pqi_sg_descriptor *mem_descriptor;
 struct pqi_ofa_memory *ofap;

 ofap = ctrl_info->pqi_ofa_mem_virt_addr;

 if (!ofap)
  return;

 if (!ofap->bytes_allocated)
  goto out;

 mem_descriptor = ofap->sg_descriptor;

 for (i = 0; i < get_unaligned_le16(&ofap->num_memory_descriptors);
  i++) {
  dma_free_coherent(&ctrl_info->pci_dev->dev,
   get_unaligned_le32(&mem_descriptor[i].length),
   ctrl_info->pqi_ofa_chunk_virt_addr[i],
   get_unaligned_le64(&mem_descriptor[i].address));
 }
 kfree(ctrl_info->pqi_ofa_chunk_virt_addr);

out:
 dma_free_coherent(&ctrl_info->pci_dev->dev,
   PQI_OFA_MEMORY_DESCRIPTOR_LENGTH, ofap,
   ctrl_info->pqi_ofa_mem_dma_handle);
 ctrl_info->pqi_ofa_mem_virt_addr = ((void*)0);
}
