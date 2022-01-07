
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* mnt_root; } ;


 struct dentry* ERR_PTR (int) ;
 int configfs_fs_type ;
 int configfs_mnt_count ;
 TYPE_1__* configfs_mount ;
 int simple_pin_fs (int *,TYPE_1__**,int *) ;

struct dentry *configfs_pin_fs(void)
{
 int err = simple_pin_fs(&configfs_fs_type, &configfs_mount,
        &configfs_mnt_count);
 return err ? ERR_PTR(err) : configfs_mount->mnt_root;
}
