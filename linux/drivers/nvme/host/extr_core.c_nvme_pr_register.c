
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct block_device {int dummy; } ;


 int EOPNOTSUPP ;
 unsigned int PR_FL_IGNORE_KEY ;
 int nvme_cmd_resv_register ;
 int nvme_pr_command (struct block_device*,int,int ,int ,int ) ;

__attribute__((used)) static int nvme_pr_register(struct block_device *bdev, u64 old,
  u64 new, unsigned flags)
{
 u32 cdw10;

 if (flags & ~PR_FL_IGNORE_KEY)
  return -EOPNOTSUPP;

 cdw10 = old ? 2 : 0;
 cdw10 |= (flags & PR_FL_IGNORE_KEY) ? 1 << 3 : 0;
 cdw10 |= (1 << 30) | (1 << 31);
 return nvme_pr_command(bdev, cdw10, old, new, nvme_cmd_resv_register);
}
