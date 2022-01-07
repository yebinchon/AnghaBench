
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smem_private_entry {scalar_t__ canary; int padding_data; int size; int item; } ;
struct smem_partition_header {int host1; int host0; } ;
struct qcom_smem {int dev; } ;


 int EINVAL ;
 int ENOENT ;
 void* ERR_PTR (int ) ;
 scalar_t__ SMEM_PRIVATE_CANARY ;
 struct smem_private_entry* cached_entry_next (struct smem_private_entry*,size_t) ;
 void* cached_entry_to_item (struct smem_private_entry*) ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 struct smem_private_entry* phdr_to_first_cached_entry (struct smem_partition_header*,size_t) ;
 struct smem_private_entry* phdr_to_first_uncached_entry (struct smem_partition_header*) ;
 struct smem_private_entry* phdr_to_last_cached_entry (struct smem_partition_header*) ;
 struct smem_private_entry* phdr_to_last_uncached_entry (struct smem_partition_header*) ;
 struct smem_private_entry* uncached_entry_next (struct smem_private_entry*) ;
 void* uncached_entry_to_item (struct smem_private_entry*) ;

__attribute__((used)) static void *qcom_smem_get_private(struct qcom_smem *smem,
       struct smem_partition_header *phdr,
       size_t cacheline,
       unsigned item,
       size_t *size)
{
 struct smem_private_entry *e, *end;

 e = phdr_to_first_uncached_entry(phdr);
 end = phdr_to_last_uncached_entry(phdr);

 while (e < end) {
  if (e->canary != SMEM_PRIVATE_CANARY)
   goto invalid_canary;

  if (le16_to_cpu(e->item) == item) {
   if (size != ((void*)0))
    *size = le32_to_cpu(e->size) -
     le16_to_cpu(e->padding_data);

   return uncached_entry_to_item(e);
  }

  e = uncached_entry_next(e);
 }



 e = phdr_to_first_cached_entry(phdr, cacheline);
 end = phdr_to_last_cached_entry(phdr);

 while (e > end) {
  if (e->canary != SMEM_PRIVATE_CANARY)
   goto invalid_canary;

  if (le16_to_cpu(e->item) == item) {
   if (size != ((void*)0))
    *size = le32_to_cpu(e->size) -
     le16_to_cpu(e->padding_data);

   return cached_entry_to_item(e);
  }

  e = cached_entry_next(e, cacheline);
 }

 return ERR_PTR(-ENOENT);

invalid_canary:
 dev_err(smem->dev, "Found invalid canary in hosts %hu:%hu partition\n",
   le16_to_cpu(phdr->host0), le16_to_cpu(phdr->host1));

 return ERR_PTR(-EINVAL);
}
