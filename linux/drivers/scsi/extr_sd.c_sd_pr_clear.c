
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct block_device {int dummy; } ;


 int sd_pr_command (struct block_device*,int,int ,int ,int ,int ) ;

__attribute__((used)) static int sd_pr_clear(struct block_device *bdev, u64 key)
{
 return sd_pr_command(bdev, 0x03, key, 0, 0, 0);
}
