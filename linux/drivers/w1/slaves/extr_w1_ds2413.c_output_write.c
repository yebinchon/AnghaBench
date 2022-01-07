
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char u8 ;
struct w1_slave {int dev; TYPE_1__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {int bus_mutex; } ;


 int EFAULT ;
 int EIO ;
 char W1_F3A_FUNC_PIO_ACCESS_WRITE ;
 unsigned int W1_F3A_RETRIES ;
 scalar_t__ W1_F3A_SUCCESS_CONFIRM_BYTE ;
 int dev_dbg (int *,char*,...) ;
 int dev_warn (int *,char*,unsigned int) ;
 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ w1_read_8 (TYPE_1__*) ;
 scalar_t__ w1_reset_resume_command (TYPE_1__*) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_block (TYPE_1__*,char*,int) ;

__attribute__((used)) static ssize_t output_write(struct file *filp, struct kobject *kobj,
       struct bin_attribute *bin_attr, char *buf,
       loff_t off, size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);
 u8 w1_buf[3];
 unsigned int retries = W1_F3A_RETRIES;
 ssize_t bytes_written = -EIO;

 if (count != 1 || off != 0)
  return -EFAULT;

 dev_dbg(&sl->dev, "locking mutex for write_output");
 mutex_lock(&sl->master->bus_mutex);
 dev_dbg(&sl->dev, "mutex locked");

 if (w1_reset_select_slave(sl))
  goto out;



 *buf = *buf | 0xFC;

 while (retries--) {
  w1_buf[0] = W1_F3A_FUNC_PIO_ACCESS_WRITE;
  w1_buf[1] = *buf;
  w1_buf[2] = ~(*buf);
  w1_write_block(sl->master, w1_buf, 3);

  if (w1_read_8(sl->master) == W1_F3A_SUCCESS_CONFIRM_BYTE) {
   bytes_written = 1;
   goto out;
  }
  if (w1_reset_resume_command(sl->master))
   goto out;

  dev_warn(&sl->dev, "PIO_ACCESS_WRITE error, retries left: %d\n", retries);
 }

out:
 mutex_unlock(&sl->master->bus_mutex);
 dev_dbg(&sl->dev, "%s, mutex unlocked, retries: %d\n",
  (bytes_written > 0) ? "succeeded" : "error", retries);
 return bytes_written;
}
