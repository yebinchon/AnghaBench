
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {int s_maxbytes; } ;
struct TYPE_3__ {struct inode* host; } ;


 int ENXIO ;




 int find_desired_extent (struct inode*,int*,int) ;
 int generic_file_llseek (struct file*,int,int) ;
 int i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int vfs_setpos (struct file*,int,int ) ;

__attribute__((used)) static loff_t btrfs_file_llseek(struct file *file, loff_t offset, int whence)
{
 struct inode *inode = file->f_mapping->host;
 int ret;

 inode_lock(inode);
 switch (whence) {
 case 129:
 case 131:
  offset = generic_file_llseek(file, offset, whence);
  goto out;
 case 130:
 case 128:
  if (offset >= i_size_read(inode)) {
   inode_unlock(inode);
   return -ENXIO;
  }

  ret = find_desired_extent(inode, &offset, whence);
  if (ret) {
   inode_unlock(inode);
   return ret;
  }
 }

 offset = vfs_setpos(file, offset, inode->i_sb->s_maxbytes);
out:
 inode_unlock(inode);
 return offset;
}
