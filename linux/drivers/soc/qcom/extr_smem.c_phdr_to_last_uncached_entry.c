
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smem_partition_header {int offset_free_uncached; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static void *
phdr_to_last_uncached_entry(struct smem_partition_header *phdr)
{
 void *p = phdr;

 return p + le32_to_cpu(phdr->offset_free_uncached);
}
