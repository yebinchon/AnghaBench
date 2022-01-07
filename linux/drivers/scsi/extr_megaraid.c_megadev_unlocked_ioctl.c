
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int megadev_ioctl (struct file*,unsigned int,unsigned long) ;
 int megadev_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long
megadev_unlocked_ioctl(struct file *filep, unsigned int cmd, unsigned long arg)
{
 int ret;

 mutex_lock(&megadev_mutex);
 ret = megadev_ioctl(filep, cmd, arg);
 mutex_unlock(&megadev_mutex);

 return ret;
}
