
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct file_operations {int mmap; int compat_ioctl; int unlocked_ioctl; } ;
struct file {int f_mode; } ;


 int FMODE_WRITE ;
 int LOCKDOWN_DEBUGFS ;
 int security_locked_down (int ) ;

__attribute__((used)) static bool debugfs_is_locked_down(struct inode *inode,
       struct file *filp,
       const struct file_operations *real_fops)
{
 if ((inode->i_mode & 07777) == 0444 &&
     !(filp->f_mode & FMODE_WRITE) &&
     !real_fops->unlocked_ioctl &&
     !real_fops->compat_ioctl &&
     !real_fops->mmap)
  return 0;

 return security_locked_down(LOCKDOWN_DEBUGFS);
}
