
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void smem_private_entry ;
struct smem_partition_header {int dummy; } ;



__attribute__((used)) static struct smem_private_entry *
phdr_to_first_uncached_entry(struct smem_partition_header *phdr)
{
 void *p = phdr;

 return p + sizeof(*phdr);
}
