
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pqi_sg_descriptor {int address; int flags; int length; } ;
struct pqi_ofa_memory {int bytes_allocated; struct pqi_sg_descriptor* sg_descriptor; int num_memory_descriptors; } ;
struct pqi_ctrl_info {int * pqi_ofa_chunk_virt_addr; struct pqi_ofa_memory* pqi_ofa_mem_virt_addr; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int CISS_SG_LAST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (struct device*,int,scalar_t__*,int ) ;
 int dma_free_coherent (struct device*,int,int ,int ) ;
 int get_unaligned_le64 (int *) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int put_unaligned_le16 (int,int *) ;
 int put_unaligned_le32 (int,int *) ;
 int put_unaligned_le64 (int ,int *) ;

__attribute__((used)) static int pqi_ofa_alloc_mem(struct pqi_ctrl_info *ctrl_info,
 u32 total_size, u32 chunk_size)
{
 u32 sg_count;
 u32 size;
 int i;
 struct pqi_sg_descriptor *mem_descriptor = ((void*)0);
 struct device *dev;
 struct pqi_ofa_memory *ofap;

 dev = &ctrl_info->pci_dev->dev;

 sg_count = (total_size + chunk_size - 1);
 sg_count /= chunk_size;

 ofap = ctrl_info->pqi_ofa_mem_virt_addr;

 if (sg_count*chunk_size < total_size)
  goto out;

 ctrl_info->pqi_ofa_chunk_virt_addr =
    kcalloc(sg_count, sizeof(void *), GFP_KERNEL);
 if (!ctrl_info->pqi_ofa_chunk_virt_addr)
  goto out;

 for (size = 0, i = 0; size < total_size; size += chunk_size, i++) {
  dma_addr_t dma_handle;

  ctrl_info->pqi_ofa_chunk_virt_addr[i] =
   dma_alloc_coherent(dev, chunk_size, &dma_handle,
        GFP_KERNEL);

  if (!ctrl_info->pqi_ofa_chunk_virt_addr[i])
   break;

  mem_descriptor = &ofap->sg_descriptor[i];
  put_unaligned_le64 ((u64) dma_handle, &mem_descriptor->address);
  put_unaligned_le32 (chunk_size, &mem_descriptor->length);
 }

 if (!size || size < total_size)
  goto out_free_chunks;

 put_unaligned_le32(CISS_SG_LAST, &mem_descriptor->flags);
 put_unaligned_le16(sg_count, &ofap->num_memory_descriptors);
 put_unaligned_le32(size, &ofap->bytes_allocated);

 return 0;

out_free_chunks:
 while (--i >= 0) {
  mem_descriptor = &ofap->sg_descriptor[i];
  dma_free_coherent(dev, chunk_size,
    ctrl_info->pqi_ofa_chunk_virt_addr[i],
    get_unaligned_le64(&mem_descriptor->address));
 }
 kfree(ctrl_info->pqi_ofa_chunk_virt_addr);

out:
 put_unaligned_le32 (0, &ofap->bytes_allocated);
 return -ENOMEM;
}
