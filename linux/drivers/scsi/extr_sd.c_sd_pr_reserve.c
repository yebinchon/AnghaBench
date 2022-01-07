
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct block_device {int dummy; } ;
typedef enum pr_type { ____Placeholder_pr_type } pr_type ;


 int EOPNOTSUPP ;
 int sd_pr_command (struct block_device*,int,int ,int ,int ,int ) ;
 int sd_pr_type (int) ;

__attribute__((used)) static int sd_pr_reserve(struct block_device *bdev, u64 key, enum pr_type type,
  u32 flags)
{
 if (flags)
  return -EOPNOTSUPP;
 return sd_pr_command(bdev, 0x01, key, 0, sd_pr_type(type), 0);
}
