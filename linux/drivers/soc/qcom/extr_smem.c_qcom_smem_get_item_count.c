
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smem_ptable {size_t num_entries; int * entry; } ;
struct smem_info {int num_items; int magic; } ;
struct qcom_smem {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct smem_ptable*) ;
 int SMEM_INFO_MAGIC ;
 int SMEM_ITEM_COUNT ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 struct smem_ptable* qcom_smem_get_ptable (struct qcom_smem*) ;

__attribute__((used)) static u32 qcom_smem_get_item_count(struct qcom_smem *smem)
{
 struct smem_ptable *ptable;
 struct smem_info *info;

 ptable = qcom_smem_get_ptable(smem);
 if (IS_ERR_OR_NULL(ptable))
  return SMEM_ITEM_COUNT;

 info = (struct smem_info *)&ptable->entry[ptable->num_entries];
 if (memcmp(info->magic, SMEM_INFO_MAGIC, sizeof(info->magic)))
  return SMEM_ITEM_COUNT;

 return le16_to_cpu(info->num_items);
}
