
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 long autofs_root_ioctl_unlocked (struct inode*,struct file*,unsigned int,unsigned long) ;
 struct inode* file_inode (struct file*) ;

__attribute__((used)) static long autofs_root_ioctl(struct file *filp,
          unsigned int cmd, unsigned long arg)
{
 struct inode *inode = file_inode(filp);

 return autofs_root_ioctl_unlocked(inode, filp, cmd, arg);
}
