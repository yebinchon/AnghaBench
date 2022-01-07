
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct smem_partition_header {int dummy; } ;
struct TYPE_4__ {unsigned int item_count; int hwlock; struct smem_partition_header* global_partition; struct smem_partition_header** partitions; int dev; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int HWSPINLOCK_TIMEOUT ;
 unsigned int SMEM_HOST_COUNT ;
 unsigned int SMEM_ITEM_LAST_FIXED ;
 scalar_t__ WARN_ON (int) ;
 TYPE_1__* __smem ;
 int dev_err (int ,char*,unsigned int) ;
 int hwspin_lock_timeout_irqsave (int ,int ,unsigned long*) ;
 int hwspin_unlock_irqrestore (int ,unsigned long*) ;
 int qcom_smem_alloc_global (TYPE_1__*,unsigned int,size_t) ;
 int qcom_smem_alloc_private (TYPE_1__*,struct smem_partition_header*,unsigned int,size_t) ;

int qcom_smem_alloc(unsigned host, unsigned item, size_t size)
{
 struct smem_partition_header *phdr;
 unsigned long flags;
 int ret;

 if (!__smem)
  return -EPROBE_DEFER;

 if (item < SMEM_ITEM_LAST_FIXED) {
  dev_err(__smem->dev,
   "Rejecting allocation of static entry %d\n", item);
  return -EINVAL;
 }

 if (WARN_ON(item >= __smem->item_count))
  return -EINVAL;

 ret = hwspin_lock_timeout_irqsave(__smem->hwlock,
       HWSPINLOCK_TIMEOUT,
       &flags);
 if (ret)
  return ret;

 if (host < SMEM_HOST_COUNT && __smem->partitions[host]) {
  phdr = __smem->partitions[host];
  ret = qcom_smem_alloc_private(__smem, phdr, item, size);
 } else if (__smem->global_partition) {
  phdr = __smem->global_partition;
  ret = qcom_smem_alloc_private(__smem, phdr, item, size);
 } else {
  ret = qcom_smem_alloc_global(__smem, item, size);
 }

 hwspin_unlock_irqrestore(__smem->hwlock, &flags);

 return ret;
}
