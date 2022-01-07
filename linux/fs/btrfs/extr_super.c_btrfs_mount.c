
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vfsmount {TYPE_1__* mnt_sb; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_umount; } ;


 int EBUSY ;
 struct dentry* ERR_CAST (struct vfsmount*) ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int PTR_ERR_OR_ZERO (struct vfsmount*) ;
 int SB_RDONLY ;
 int btrfs_parse_subvol_options (void*,char**,int *) ;
 int btrfs_remount (TYPE_1__*,int*,int *) ;
 int btrfs_root_fs_type ;
 int down_write (int *) ;
 int kfree (char*) ;
 int mntput (struct vfsmount*) ;
 struct dentry* mount_subvol (char*,int ,struct vfsmount*) ;
 int up_write (int *) ;
 struct vfsmount* vfs_kern_mount (int *,int,char const*,void*) ;

__attribute__((used)) static struct dentry *btrfs_mount(struct file_system_type *fs_type, int flags,
  const char *device_name, void *data)
{
 struct vfsmount *mnt_root;
 struct dentry *root;
 char *subvol_name = ((void*)0);
 u64 subvol_objectid = 0;
 int error = 0;

 error = btrfs_parse_subvol_options(data, &subvol_name,
     &subvol_objectid);
 if (error) {
  kfree(subvol_name);
  return ERR_PTR(error);
 }


 mnt_root = vfs_kern_mount(&btrfs_root_fs_type, flags, device_name, data);
 if (PTR_ERR_OR_ZERO(mnt_root) == -EBUSY) {
  if (flags & SB_RDONLY) {
   mnt_root = vfs_kern_mount(&btrfs_root_fs_type,
    flags & ~SB_RDONLY, device_name, data);
  } else {
   mnt_root = vfs_kern_mount(&btrfs_root_fs_type,
    flags | SB_RDONLY, device_name, data);
   if (IS_ERR(mnt_root)) {
    root = ERR_CAST(mnt_root);
    kfree(subvol_name);
    goto out;
   }

   down_write(&mnt_root->mnt_sb->s_umount);
   error = btrfs_remount(mnt_root->mnt_sb, &flags, ((void*)0));
   up_write(&mnt_root->mnt_sb->s_umount);
   if (error < 0) {
    root = ERR_PTR(error);
    mntput(mnt_root);
    kfree(subvol_name);
    goto out;
   }
  }
 }
 if (IS_ERR(mnt_root)) {
  root = ERR_CAST(mnt_root);
  kfree(subvol_name);
  goto out;
 }


 root = mount_subvol(subvol_name, subvol_objectid, mnt_root);

out:
 return root;
}
