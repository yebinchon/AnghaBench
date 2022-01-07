
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bio_counter; } ;
struct btrfs_fs_info {TYPE_1__ dev_replace; } ;


 int percpu_counter_inc (int *) ;

void btrfs_bio_counter_inc_noblocked(struct btrfs_fs_info *fs_info)
{
 percpu_counter_inc(&fs_info->dev_replace.bio_counter);
}
