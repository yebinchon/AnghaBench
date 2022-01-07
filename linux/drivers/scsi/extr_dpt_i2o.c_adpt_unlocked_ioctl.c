
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int uint ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 long adpt_ioctl (struct inode*,struct file*,int ,int ) ;
 int adpt_mutex ;
 struct inode* file_inode (struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long adpt_unlocked_ioctl(struct file *file, uint cmd, ulong arg)
{
 struct inode *inode;
 long ret;

 inode = file_inode(file);

 mutex_lock(&adpt_mutex);
 ret = adpt_ioctl(inode, file, cmd, arg);
 mutex_unlock(&adpt_mutex);

 return ret;
}
