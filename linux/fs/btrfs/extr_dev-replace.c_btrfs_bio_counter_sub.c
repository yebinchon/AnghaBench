
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int replace_wait; int bio_counter; } ;
struct btrfs_fs_info {TYPE_1__ dev_replace; } ;
typedef int s64 ;


 int cond_wake_up_nomb (int *) ;
 int percpu_counter_sub (int *,int ) ;

void btrfs_bio_counter_sub(struct btrfs_fs_info *fs_info, s64 amount)
{
 percpu_counter_sub(&fs_info->dev_replace.bio_counter, amount);
 cond_wake_up_nomb(&fs_info->dev_replace.replace_wait);
}
