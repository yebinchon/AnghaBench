
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct nvdimm_drvdata {int dev; } ;
struct nd_namespace_label {void* checksum; int slot; } ;


 void* __cpu_to_le64 (scalar_t__) ;
 scalar_t__ __le32_to_cpu (int ) ;
 scalar_t__ __le64_to_cpu (void*) ;
 int checksum ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ namespace_label_has (struct nvdimm_drvdata*,int ) ;
 scalar_t__ nd_fletcher64 (struct nd_namespace_label*,int ,int) ;
 int sizeof_namespace_label (struct nvdimm_drvdata*) ;

__attribute__((used)) static bool slot_valid(struct nvdimm_drvdata *ndd,
  struct nd_namespace_label *nd_label, u32 slot)
{

 if (slot != __le32_to_cpu(nd_label->slot))
  return 0;


 if (namespace_label_has(ndd, checksum)) {
  u64 sum, sum_save;

  sum_save = __le64_to_cpu(nd_label->checksum);
  nd_label->checksum = __cpu_to_le64(0);
  sum = nd_fletcher64(nd_label, sizeof_namespace_label(ndd), 1);
  nd_label->checksum = __cpu_to_le64(sum_save);
  if (sum != sum_save) {
   dev_dbg(ndd->dev, "fail checksum. slot: %d expect: %#llx\n",
    slot, sum);
   return 0;
  }
 }

 return 1;
}
