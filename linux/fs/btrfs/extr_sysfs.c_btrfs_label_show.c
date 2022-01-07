
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {int super_lock; TYPE_1__* super_copy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* label; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct btrfs_fs_info* to_fs_info (struct kobject*) ;

__attribute__((used)) static ssize_t btrfs_label_show(struct kobject *kobj,
    struct kobj_attribute *a, char *buf)
{
 struct btrfs_fs_info *fs_info = to_fs_info(kobj);
 char *label = fs_info->super_copy->label;
 ssize_t ret;

 spin_lock(&fs_info->super_lock);
 ret = snprintf(buf, PAGE_SIZE, label[0] ? "%s\n" : "%s", label);
 spin_unlock(&fs_info->super_lock);

 return ret;
}
