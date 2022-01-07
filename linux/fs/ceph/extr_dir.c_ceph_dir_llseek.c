
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {scalar_t__ f_version; scalar_t__ f_pos; TYPE_1__* f_mapping; struct ceph_dir_file_info* private_data; } ;
struct TYPE_4__ {int flags; } ;
struct ceph_dir_file_info {int readdir_cache_idx; TYPE_2__ file_info; scalar_t__ dir_release_count; } ;
typedef scalar_t__ loff_t ;
struct TYPE_3__ {struct inode* host; } ;


 int CEPH_F_ATEND ;
 scalar_t__ EINVAL ;
 scalar_t__ EOPNOTSUPP ;



 int dout (char*,struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ is_hash_order (scalar_t__) ;
 scalar_t__ need_reset_readdir (struct ceph_dir_file_info*,scalar_t__) ;
 int reset_readdir (struct ceph_dir_file_info*) ;

__attribute__((used)) static loff_t ceph_dir_llseek(struct file *file, loff_t offset, int whence)
{
 struct ceph_dir_file_info *dfi = file->private_data;
 struct inode *inode = file->f_mapping->host;
 loff_t retval;

 inode_lock(inode);
 retval = -EINVAL;
 switch (whence) {
 case 130:
  offset += file->f_pos;
 case 128:
  break;
 case 129:
  retval = -EOPNOTSUPP;
 default:
  goto out;
 }

 if (offset >= 0) {
  if (need_reset_readdir(dfi, offset)) {
   dout("dir_llseek dropping %p content\n", file);
   reset_readdir(dfi);
  } else if (is_hash_order(offset) && offset > file->f_pos) {


   dfi->dir_release_count = 0;
   dfi->readdir_cache_idx = -1;
  }

  if (offset != file->f_pos) {
   file->f_pos = offset;
   file->f_version = 0;
   dfi->file_info.flags &= ~CEPH_F_ATEND;
  }
  retval = offset;
 }
out:
 inode_unlock(inode);
 return retval;
}
