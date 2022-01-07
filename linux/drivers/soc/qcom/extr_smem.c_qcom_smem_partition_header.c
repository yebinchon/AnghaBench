
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct smem_ptable_entry {int size; int offset; } ;
struct smem_partition_header {int offset_free_uncached; int size; int host1; int host0; int * magic; } ;
struct qcom_smem {int dev; TYPE_1__* regions; } ;
struct TYPE_2__ {struct smem_partition_header* virt_base; } ;


 int SMEM_PART_MAGIC ;
 int dev_err (int ,char*,scalar_t__,scalar_t__,...) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ memcmp (int *,int ,int) ;

__attribute__((used)) static struct smem_partition_header *
qcom_smem_partition_header(struct qcom_smem *smem,
  struct smem_ptable_entry *entry, u16 host0, u16 host1)
{
 struct smem_partition_header *header;
 u32 size;

 header = smem->regions[0].virt_base + le32_to_cpu(entry->offset);

 if (memcmp(header->magic, SMEM_PART_MAGIC, sizeof(header->magic))) {
  dev_err(smem->dev, "bad partition magic %02x %02x %02x %02x\n",
   header->magic[0], header->magic[1],
   header->magic[2], header->magic[3]);
  return ((void*)0);
 }

 if (host0 != le16_to_cpu(header->host0)) {
  dev_err(smem->dev, "bad host0 (%hu != %hu)\n",
    host0, le16_to_cpu(header->host0));
  return ((void*)0);
 }
 if (host1 != le16_to_cpu(header->host1)) {
  dev_err(smem->dev, "bad host1 (%hu != %hu)\n",
    host1, le16_to_cpu(header->host1));
  return ((void*)0);
 }

 size = le32_to_cpu(header->size);
 if (size != le32_to_cpu(entry->size)) {
  dev_err(smem->dev, "bad partition size (%u != %u)\n",
   size, le32_to_cpu(entry->size));
  return ((void*)0);
 }

 if (le32_to_cpu(header->offset_free_uncached) > size) {
  dev_err(smem->dev, "bad partition free uncached (%u > %u)\n",
   le32_to_cpu(header->offset_free_uncached), size);
  return ((void*)0);
 }

 return header;
}
