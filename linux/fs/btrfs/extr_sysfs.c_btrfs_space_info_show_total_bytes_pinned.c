
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_space_info {int total_bytes_pinned; } ;
typedef int ssize_t ;
typedef int s64 ;


 int PAGE_SIZE ;
 int percpu_counter_sum (int *) ;
 int snprintf (char*,int ,char*,int ) ;
 struct btrfs_space_info* to_space_info (struct kobject*) ;

__attribute__((used)) static ssize_t btrfs_space_info_show_total_bytes_pinned(struct kobject *kobj,
             struct kobj_attribute *a,
             char *buf)
{
 struct btrfs_space_info *sinfo = to_space_info(kobj);
 s64 val = percpu_counter_sum(&sinfo->total_bytes_pinned);
 return snprintf(buf, PAGE_SIZE, "%lld\n", val);
}
