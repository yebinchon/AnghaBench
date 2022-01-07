
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct btrfs_space_info {int total_bytes_pinned; } ;


 int kfree (struct btrfs_space_info*) ;
 int percpu_counter_destroy (int *) ;
 struct btrfs_space_info* to_space_info (struct kobject*) ;

__attribute__((used)) static void space_info_release(struct kobject *kobj)
{
 struct btrfs_space_info *sinfo = to_space_info(kobj);
 percpu_counter_destroy(&sinfo->total_bytes_pinned);
 kfree(sinfo);
}
