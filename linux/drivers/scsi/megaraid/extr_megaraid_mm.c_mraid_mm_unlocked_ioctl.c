
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int mraid_mm_ioctl (struct file*,unsigned int,unsigned long) ;
 int mraid_mm_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long
mraid_mm_unlocked_ioctl(struct file *filep, unsigned int cmd,
          unsigned long arg)
{
 int err;


 mutex_lock(&mraid_mm_mutex);
 err = mraid_mm_ioctl(filep, cmd, arg);
 mutex_unlock(&mraid_mm_mutex);

 return err;
}
