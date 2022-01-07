
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smem_header {int available; int free_offset; struct smem_global_entry* toc; } ;
struct smem_global_entry {void* allocated; void* size; int offset; } ;
struct qcom_smem {TYPE_1__* regions; } ;
struct TYPE_2__ {struct smem_header* virt_base; } ;


 size_t ALIGN (size_t,int) ;
 int EEXIST ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 void* cpu_to_le32 (int) ;
 int le32_add_cpu (int *,size_t) ;
 size_t le32_to_cpu (int ) ;
 int wmb () ;

__attribute__((used)) static int qcom_smem_alloc_global(struct qcom_smem *smem,
      unsigned item,
      size_t size)
{
 struct smem_global_entry *entry;
 struct smem_header *header;

 header = smem->regions[0].virt_base;
 entry = &header->toc[item];
 if (entry->allocated)
  return -EEXIST;

 size = ALIGN(size, 8);
 if (WARN_ON(size > le32_to_cpu(header->available)))
  return -ENOMEM;

 entry->offset = header->free_offset;
 entry->size = cpu_to_le32(size);






 wmb();
 entry->allocated = cpu_to_le32(1);

 le32_add_cpu(&header->free_offset, size);
 le32_add_cpu(&header->available, -size);

 return 0;
}
