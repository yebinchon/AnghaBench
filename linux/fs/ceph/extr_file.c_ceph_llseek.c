
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {scalar_t__ f_pos; TYPE_1__* f_mapping; } ;
struct ceph_fs_client {int max_file_size; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int CEPH_STAT_CAP_SIZE ;
 scalar_t__ ENXIO ;




 scalar_t__ ceph_do_getattr (struct inode*,int ,int) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int max (scalar_t__,int ) ;
 scalar_t__ vfs_setpos (struct file*,scalar_t__,int ) ;

__attribute__((used)) static loff_t ceph_llseek(struct file *file, loff_t offset, int whence)
{
 struct inode *inode = file->f_mapping->host;
 struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 loff_t i_size;
 loff_t ret;

 inode_lock(inode);

 if (whence == 129 || whence == 130 || whence == 128) {
  ret = ceph_do_getattr(inode, CEPH_STAT_CAP_SIZE, 0);
  if (ret < 0)
   goto out;
 }

 i_size = i_size_read(inode);
 switch (whence) {
 case 129:
  offset += i_size;
  break;
 case 131:






  if (offset == 0) {
   ret = file->f_pos;
   goto out;
  }
  offset += file->f_pos;
  break;
 case 130:
  if (offset < 0 || offset >= i_size) {
   ret = -ENXIO;
   goto out;
  }
  break;
 case 128:
  if (offset < 0 || offset >= i_size) {
   ret = -ENXIO;
   goto out;
  }
  offset = i_size;
  break;
 }

 ret = vfs_setpos(file, offset, max(i_size, fsc->max_file_size));

out:
 inode_unlock(inode);
 return ret;
}
