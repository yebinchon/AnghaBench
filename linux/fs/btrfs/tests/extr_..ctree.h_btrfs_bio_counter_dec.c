
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;


 int btrfs_bio_counter_sub (struct btrfs_fs_info*,int) ;

__attribute__((used)) static inline void btrfs_bio_counter_dec(struct btrfs_fs_info *fs_info)
{
 btrfs_bio_counter_sub(fs_info, 1);
}
