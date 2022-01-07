
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct block_device {int dummy; } ;
typedef enum pr_type { ____Placeholder_pr_type } pr_type ;


 int nvme_cmd_resv_release ;
 int nvme_pr_command (struct block_device*,int,int ,int ,int ) ;
 int nvme_pr_type (int) ;

__attribute__((used)) static int nvme_pr_release(struct block_device *bdev, u64 key, enum pr_type type)
{
 u32 cdw10 = nvme_pr_type(type) << 8 | (key ? 1 << 3 : 0);
 return nvme_pr_command(bdev, cdw10, key, 0, nvme_cmd_resv_release);
}
