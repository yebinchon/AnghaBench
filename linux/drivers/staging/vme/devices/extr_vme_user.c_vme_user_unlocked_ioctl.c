
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_rdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mutex; } ;


 unsigned int MINOR (int ) ;
 struct inode* file_inode (struct file*) ;
 TYPE_1__* image ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vme_user_ioctl (struct inode*,struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long
vme_user_unlocked_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 int ret;
 struct inode *inode = file_inode(file);
 unsigned int minor = MINOR(inode->i_rdev);

 mutex_lock(&image[minor].mutex);
 ret = vme_user_ioctl(inode, file, cmd, arg);
 mutex_unlock(&image[minor].mutex);

 return ret;
}
