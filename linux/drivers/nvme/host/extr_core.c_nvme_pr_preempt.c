
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct block_device {int dummy; } ;
typedef enum pr_type { ____Placeholder_pr_type } pr_type ;


 int nvme_cmd_resv_acquire ;
 int nvme_pr_command (struct block_device*,int,int ,int ,int ) ;
 int nvme_pr_type (int) ;

__attribute__((used)) static int nvme_pr_preempt(struct block_device *bdev, u64 old, u64 new,
  enum pr_type type, bool abort)
{
 u32 cdw10 = nvme_pr_type(type) << 8 | (abort ? 2 : 1);
 return nvme_pr_command(bdev, cdw10, old, new, nvme_cmd_resv_acquire);
}
