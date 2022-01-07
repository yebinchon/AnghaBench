
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct w1_slave {TYPE_1__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {int bus_mutex; } ;


 int EFAULT ;
 int EIO ;
 int W1_F29_FUNC_RESET_ACTIVITY_LATCHES ;
 unsigned int W1_F29_RETRIES ;
 scalar_t__ W1_F29_SUCCESS_CONFIRM_BYTE ;
 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ w1_read_8 (TYPE_1__*) ;
 scalar_t__ w1_reset_resume_command (TYPE_1__*) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_8 (TYPE_1__*,int ) ;

__attribute__((used)) static ssize_t activity_write(struct file *filp, struct kobject *kobj,
         struct bin_attribute *bin_attr, char *buf,
         loff_t off, size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);
 unsigned int retries = W1_F29_RETRIES;

 if (count != 1 || off != 0)
  return -EFAULT;

 mutex_lock(&sl->master->bus_mutex);

 if (w1_reset_select_slave(sl))
  goto error;

 while (retries--) {
  w1_write_8(sl->master, W1_F29_FUNC_RESET_ACTIVITY_LATCHES);
  if (w1_read_8(sl->master) == W1_F29_SUCCESS_CONFIRM_BYTE) {
   mutex_unlock(&sl->master->bus_mutex);
   return 1;
  }
  if (w1_reset_resume_command(sl->master))
   goto error;
 }

error:
 mutex_unlock(&sl->master->bus_mutex);
 return -EIO;
}
