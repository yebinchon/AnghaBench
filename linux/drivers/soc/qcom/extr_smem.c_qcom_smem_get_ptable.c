
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct smem_ptable {int version; int magic; } ;
struct qcom_smem {int dev; TYPE_1__* regions; } ;
struct TYPE_2__ {int size; int virt_base; } ;


 int EINVAL ;
 int ENOENT ;
 struct smem_ptable* ERR_PTR (int ) ;
 int SMEM_PTABLE_MAGIC ;
 int SZ_4K ;
 int dev_err (int ,char*,int) ;
 int le32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static struct smem_ptable *qcom_smem_get_ptable(struct qcom_smem *smem)
{
 struct smem_ptable *ptable;
 u32 version;

 ptable = smem->regions[0].virt_base + smem->regions[0].size - SZ_4K;
 if (memcmp(ptable->magic, SMEM_PTABLE_MAGIC, sizeof(ptable->magic)))
  return ERR_PTR(-ENOENT);

 version = le32_to_cpu(ptable->version);
 if (version != 1) {
  dev_err(smem->dev,
   "Unsupported partition header version %d\n", version);
  return ERR_PTR(-EINVAL);
 }
 return ptable;
}
