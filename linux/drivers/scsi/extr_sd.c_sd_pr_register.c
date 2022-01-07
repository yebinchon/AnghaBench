
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct block_device {int dummy; } ;


 int EOPNOTSUPP ;
 int PR_FL_IGNORE_KEY ;
 int sd_pr_command (struct block_device*,int,int ,int ,int ,int) ;

__attribute__((used)) static int sd_pr_register(struct block_device *bdev, u64 old_key, u64 new_key,
  u32 flags)
{
 if (flags & ~PR_FL_IGNORE_KEY)
  return -EOPNOTSUPP;
 return sd_pr_command(bdev, (flags & PR_FL_IGNORE_KEY) ? 0x06 : 0x00,
   old_key, new_key, 0,
   (1 << 0) );
}
