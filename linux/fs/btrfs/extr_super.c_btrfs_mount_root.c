
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; scalar_t__ s_root; int s_id; struct btrfs_fs_devices* fs_devices; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
struct btrfs_fs_info {int flags; struct btrfs_fs_devices* fs_devices; void* super_for_commit; void* super_copy; } ;
struct btrfs_fs_devices {scalar_t__ rw_devices; struct block_device* latest_bdev; } ;
struct btrfs_device {int s_flags; scalar_t__ s_root; int s_id; struct btrfs_fs_devices* fs_devices; } ;
struct block_device {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct file_system_type* bdev_holder; } ;


 int BTRFS_FS_CSUM_IMPL_FAST ;
 int BTRFS_SUPER_INFO_SIZE ;
 int EACCES ;
 int EBUSY ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int) ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct super_block*) ;
 int PTR_ERR (struct super_block*) ;
 int SB_NOSEC ;
 int SB_RDONLY ;
 int btrfs_close_devices (struct btrfs_fs_devices*) ;
 int btrfs_fill_super (struct super_block*,struct btrfs_fs_devices*,void*) ;
 int btrfs_open_devices (struct btrfs_fs_devices*,int ,struct file_system_type*) ;
 int btrfs_parse_device_options (void*,int ,struct file_system_type*) ;
 TYPE_1__* btrfs_sb (struct super_block*) ;
 struct super_block* btrfs_scan_one_device (char const*,int ,struct file_system_type*) ;
 int btrfs_set_super ;
 int btrfs_test_super ;
 int crc32c_impl () ;
 int deactivate_locked_super (struct super_block*) ;
 struct dentry* dget (scalar_t__) ;
 int free_fs_info (struct btrfs_fs_info*) ;
 struct btrfs_fs_info* kvzalloc (int,int ) ;
 void* kzalloc (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_free_mnt_opts (void**) ;
 int security_sb_eat_lsm_opts (void*,void**) ;
 int security_sb_set_mnt_opts (struct super_block*,void*,int ,int *) ;
 int set_bit (int ,int *) ;
 struct super_block* sget (struct file_system_type*,int ,int ,int,struct btrfs_fs_info*) ;
 int snprintf (int ,int,char*,struct block_device*) ;
 int strstr (int ,char*) ;
 int uuid_mutex ;

__attribute__((used)) static struct dentry *btrfs_mount_root(struct file_system_type *fs_type,
  int flags, const char *device_name, void *data)
{
 struct block_device *bdev = ((void*)0);
 struct super_block *s;
 struct btrfs_device *device = ((void*)0);
 struct btrfs_fs_devices *fs_devices = ((void*)0);
 struct btrfs_fs_info *fs_info = ((void*)0);
 void *new_sec_opts = ((void*)0);
 fmode_t mode = FMODE_READ;
 int error = 0;

 if (!(flags & SB_RDONLY))
  mode |= FMODE_WRITE;

 if (data) {
  error = security_sb_eat_lsm_opts(data, &new_sec_opts);
  if (error)
   return ERR_PTR(error);
 }







 fs_info = kvzalloc(sizeof(struct btrfs_fs_info), GFP_KERNEL);
 if (!fs_info) {
  error = -ENOMEM;
  goto error_sec_opts;
 }

 fs_info->super_copy = kzalloc(BTRFS_SUPER_INFO_SIZE, GFP_KERNEL);
 fs_info->super_for_commit = kzalloc(BTRFS_SUPER_INFO_SIZE, GFP_KERNEL);
 if (!fs_info->super_copy || !fs_info->super_for_commit) {
  error = -ENOMEM;
  goto error_fs_info;
 }

 mutex_lock(&uuid_mutex);
 error = btrfs_parse_device_options(data, mode, fs_type);
 if (error) {
  mutex_unlock(&uuid_mutex);
  goto error_fs_info;
 }

 device = btrfs_scan_one_device(device_name, mode, fs_type);
 if (IS_ERR(device)) {
  mutex_unlock(&uuid_mutex);
  error = PTR_ERR(device);
  goto error_fs_info;
 }

 fs_devices = device->fs_devices;
 fs_info->fs_devices = fs_devices;

 error = btrfs_open_devices(fs_devices, mode, fs_type);
 mutex_unlock(&uuid_mutex);
 if (error)
  goto error_fs_info;

 if (!(flags & SB_RDONLY) && fs_devices->rw_devices == 0) {
  error = -EACCES;
  goto error_close_devices;
 }

 bdev = fs_devices->latest_bdev;
 s = sget(fs_type, btrfs_test_super, btrfs_set_super, flags | SB_NOSEC,
   fs_info);
 if (IS_ERR(s)) {
  error = PTR_ERR(s);
  goto error_close_devices;
 }

 if (s->s_root) {
  btrfs_close_devices(fs_devices);
  free_fs_info(fs_info);
  if ((flags ^ s->s_flags) & SB_RDONLY)
   error = -EBUSY;
 } else {
  snprintf(s->s_id, sizeof(s->s_id), "%pg", bdev);
  btrfs_sb(s)->bdev_holder = fs_type;
  if (!strstr(crc32c_impl(), "generic"))
   set_bit(BTRFS_FS_CSUM_IMPL_FAST, &fs_info->flags);
  error = btrfs_fill_super(s, fs_devices, data);
 }
 if (!error)
  error = security_sb_set_mnt_opts(s, new_sec_opts, 0, ((void*)0));
 security_free_mnt_opts(&new_sec_opts);
 if (error) {
  deactivate_locked_super(s);
  return ERR_PTR(error);
 }

 return dget(s->s_root);

error_close_devices:
 btrfs_close_devices(fs_devices);
error_fs_info:
 free_fs_info(fs_info);
error_sec_opts:
 security_free_mnt_opts(&new_sec_opts);
 return ERR_PTR(error);
}
