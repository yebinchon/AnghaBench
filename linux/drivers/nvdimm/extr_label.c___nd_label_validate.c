
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {int config_size; } ;
struct nvdimm_drvdata {TYPE_1__ nsarea; struct device* dev; } ;
struct nd_namespace_index {int labelsize; int seq; int nslot; void* mysize; void* labeloff; void* otheroff; void* myoff; void* checksum; int minor; int major; int sig; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct nd_namespace_index**) ;
 int NSINDEX_SEQ_MASK ;
 int NSINDEX_SIGNATURE ;
 int NSINDEX_SIG_LEN ;
 int WARN_ON (int) ;
 void* __cpu_to_le64 (scalar_t__) ;
 int __le16_to_cpu (int ) ;
 int __le32_to_cpu (int ) ;
 int __le64_to_cpu (void*) ;
 int best_seq (int,int) ;
 int dev_dbg (struct device*,char*,int,...) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ nd_fletcher64 (struct nd_namespace_index*,int,int) ;
 int sizeof_namespace_index (struct nvdimm_drvdata*) ;
 int sizeof_namespace_label (struct nvdimm_drvdata*) ;
 struct nd_namespace_index* to_namespace_index (struct nvdimm_drvdata*,int) ;

__attribute__((used)) static int __nd_label_validate(struct nvdimm_drvdata *ndd)
{
 struct nd_namespace_index *nsindex[] = {
  to_namespace_index(ndd, 0),
  to_namespace_index(ndd, 1),
 };
 const int num_index = ARRAY_SIZE(nsindex);
 struct device *dev = ndd->dev;
 bool valid[2] = { 0 };
 int i, num_valid = 0;
 u32 seq;

 for (i = 0; i < num_index; i++) {
  u32 nslot;
  u8 sig[NSINDEX_SIG_LEN];
  u64 sum_save, sum, size;
  unsigned int version, labelsize;

  memcpy(sig, nsindex[i]->sig, NSINDEX_SIG_LEN);
  if (memcmp(sig, NSINDEX_SIGNATURE, NSINDEX_SIG_LEN) != 0) {
   dev_dbg(dev, "nsindex%d signature invalid\n", i);
   continue;
  }


  version = __le16_to_cpu(nsindex[i]->major) * 100
   + __le16_to_cpu(nsindex[i]->minor);
  if (version >= 102)
   labelsize = 1 << (7 + nsindex[i]->labelsize);
  else
   labelsize = 128;

  if (labelsize != sizeof_namespace_label(ndd)) {
   dev_dbg(dev, "nsindex%d labelsize %d invalid\n",
     i, nsindex[i]->labelsize);
   continue;
  }

  sum_save = __le64_to_cpu(nsindex[i]->checksum);
  nsindex[i]->checksum = __cpu_to_le64(0);
  sum = nd_fletcher64(nsindex[i], sizeof_namespace_index(ndd), 1);
  nsindex[i]->checksum = __cpu_to_le64(sum_save);
  if (sum != sum_save) {
   dev_dbg(dev, "nsindex%d checksum invalid\n", i);
   continue;
  }

  seq = __le32_to_cpu(nsindex[i]->seq);
  if ((seq & NSINDEX_SEQ_MASK) == 0) {
   dev_dbg(dev, "nsindex%d sequence: %#x invalid\n", i, seq);
   continue;
  }


  if (__le64_to_cpu(nsindex[i]->myoff)
    != i * sizeof_namespace_index(ndd)) {
   dev_dbg(dev, "nsindex%d myoff: %#llx invalid\n",
     i, (unsigned long long)
     __le64_to_cpu(nsindex[i]->myoff));
   continue;
  }
  if (__le64_to_cpu(nsindex[i]->otheroff)
    != (!i) * sizeof_namespace_index(ndd)) {
   dev_dbg(dev, "nsindex%d otheroff: %#llx invalid\n",
     i, (unsigned long long)
     __le64_to_cpu(nsindex[i]->otheroff));
   continue;
  }
  if (__le64_to_cpu(nsindex[i]->labeloff)
    != 2 * sizeof_namespace_index(ndd)) {
   dev_dbg(dev, "nsindex%d labeloff: %#llx invalid\n",
     i, (unsigned long long)
     __le64_to_cpu(nsindex[i]->labeloff));
   continue;
  }

  size = __le64_to_cpu(nsindex[i]->mysize);
  if (size > sizeof_namespace_index(ndd)
    || size < sizeof(struct nd_namespace_index)) {
   dev_dbg(dev, "nsindex%d mysize: %#llx invalid\n", i, size);
   continue;
  }

  nslot = __le32_to_cpu(nsindex[i]->nslot);
  if (nslot * sizeof_namespace_label(ndd)
    + 2 * sizeof_namespace_index(ndd)
    > ndd->nsarea.config_size) {
   dev_dbg(dev, "nsindex%d nslot: %u invalid, config_size: %#x\n",
     i, nslot, ndd->nsarea.config_size);
   continue;
  }
  valid[i] = 1;
  num_valid++;
 }

 switch (num_valid) {
 case 0:
  break;
 case 1:
  for (i = 0; i < num_index; i++)
   if (valid[i])
    return i;

  WARN_ON(1);
  break;
 default:

  seq = best_seq(__le32_to_cpu(nsindex[0]->seq),
    __le32_to_cpu(nsindex[1]->seq));
  if (seq == (__le32_to_cpu(nsindex[1]->seq) & NSINDEX_SEQ_MASK))
   return 1;
  else
   return 0;
  break;
 }

 return -1;
}
