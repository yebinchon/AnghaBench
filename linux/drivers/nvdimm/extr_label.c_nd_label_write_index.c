
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef int u32 ;
struct nvdimm_drvdata {int ns_next; int ns_current; } ;
struct nd_namespace_index {int labelsize; void* myoff; void* checksum; int * free; void* minor; void* major; void* nslot; void* labeloff; void* otheroff; void* mysize; void* seq; int flags; int sig; } ;


 int ALIGN (int,int ) ;
 int BITS_PER_LONG ;
 unsigned long ND_NSINDEX_INIT ;
 int NSINDEX_SIGNATURE ;
 int NSINDEX_SIG_LEN ;
 int WARN_ON (int) ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int) ;
 void* __cpu_to_le64 (unsigned long) ;
 int __le32_to_cpu (void*) ;
 int __le64_to_cpu (void*) ;
 int clear_bit_le (int,unsigned long*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int *,int,int) ;
 unsigned long nd_fletcher64 (struct nd_namespace_index*,unsigned long,int) ;
 scalar_t__ nd_label_base (struct nvdimm_drvdata*) ;
 int nd_label_copy (struct nvdimm_drvdata*,int ,struct nd_namespace_index*) ;
 int nd_label_next_nsindex (int) ;
 int nvdimm_num_label_slots (struct nvdimm_drvdata*) ;
 int nvdimm_set_config_data (struct nvdimm_drvdata*,int ,struct nd_namespace_index*,unsigned long) ;
 unsigned long sizeof_namespace_index (struct nvdimm_drvdata*) ;
 int sizeof_namespace_label (struct nvdimm_drvdata*) ;
 int to_current_namespace_index (struct nvdimm_drvdata*) ;
 struct nd_namespace_index* to_namespace_index (struct nvdimm_drvdata*,int) ;

__attribute__((used)) static int nd_label_write_index(struct nvdimm_drvdata *ndd, int index, u32 seq,
  unsigned long flags)
{
 struct nd_namespace_index *nsindex;
 unsigned long offset;
 u64 checksum;
 u32 nslot;
 int rc;

 nsindex = to_namespace_index(ndd, index);
 if (flags & ND_NSINDEX_INIT)
  nslot = nvdimm_num_label_slots(ndd);
 else
  nslot = __le32_to_cpu(nsindex->nslot);

 memcpy(nsindex->sig, NSINDEX_SIGNATURE, NSINDEX_SIG_LEN);
 memset(&nsindex->flags, 0, 3);
 nsindex->labelsize = sizeof_namespace_label(ndd) >> 8;
 nsindex->seq = __cpu_to_le32(seq);
 offset = (unsigned long) nsindex
  - (unsigned long) to_namespace_index(ndd, 0);
 nsindex->myoff = __cpu_to_le64(offset);
 nsindex->mysize = __cpu_to_le64(sizeof_namespace_index(ndd));
 offset = (unsigned long) to_namespace_index(ndd,
   nd_label_next_nsindex(index))
  - (unsigned long) to_namespace_index(ndd, 0);
 nsindex->otheroff = __cpu_to_le64(offset);
 offset = (unsigned long) nd_label_base(ndd)
  - (unsigned long) to_namespace_index(ndd, 0);
 nsindex->labeloff = __cpu_to_le64(offset);
 nsindex->nslot = __cpu_to_le32(nslot);
 nsindex->major = __cpu_to_le16(1);
 if (sizeof_namespace_label(ndd) < 256)
  nsindex->minor = __cpu_to_le16(1);
 else
  nsindex->minor = __cpu_to_le16(2);
 nsindex->checksum = __cpu_to_le64(0);
 if (flags & ND_NSINDEX_INIT) {
  unsigned long *free = (unsigned long *) nsindex->free;
  u32 nfree = ALIGN(nslot, BITS_PER_LONG);
  int last_bits, i;

  memset(nsindex->free, 0xff, nfree / 8);
  for (i = 0, last_bits = nfree - nslot; i < last_bits; i++)
   clear_bit_le(nslot + i, free);
 }
 checksum = nd_fletcher64(nsindex, sizeof_namespace_index(ndd), 1);
 nsindex->checksum = __cpu_to_le64(checksum);
 rc = nvdimm_set_config_data(ndd, __le64_to_cpu(nsindex->myoff),
   nsindex, sizeof_namespace_index(ndd));
 if (rc < 0)
  return rc;

 if (flags & ND_NSINDEX_INIT)
  return 0;


 WARN_ON(index != ndd->ns_next);
 nd_label_copy(ndd, to_current_namespace_index(ndd), nsindex);
 ndd->ns_current = nd_label_next_nsindex(ndd->ns_current);
 ndd->ns_next = nd_label_next_nsindex(ndd->ns_next);
 WARN_ON(ndd->ns_current == ndd->ns_next);

 return 0;
}
