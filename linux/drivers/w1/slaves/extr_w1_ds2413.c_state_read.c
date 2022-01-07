
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct w1_slave {int dev; TYPE_2__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int name; } ;
struct bin_attribute {TYPE_1__ attr; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {int bus_mutex; } ;


 int EINVAL ;
 int EIO ;
 int W1_F3A_FUNC_PIO_ACCESS_READ ;
 int W1_F3A_INVALID_PIO_STATE ;
 unsigned int W1_F3A_RETRIES ;
 int dev_dbg (int *,char*,...) ;
 int dev_warn (int *,char*,unsigned int) ;
 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w1_read_8 (TYPE_2__*) ;
 scalar_t__ w1_reset_resume_command (TYPE_2__*) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_8 (TYPE_2__*,int ) ;

__attribute__((used)) static ssize_t state_read(struct file *filp, struct kobject *kobj,
     struct bin_attribute *bin_attr, char *buf, loff_t off,
     size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);
 unsigned int retries = W1_F3A_RETRIES;
 ssize_t bytes_read = -EIO;
 u8 state;

 dev_dbg(&sl->dev,
  "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p",
  bin_attr->attr.name, kobj, (unsigned int)off, count, buf);

 if (off != 0)
  return 0;
 if (!buf)
  return -EINVAL;

 mutex_lock(&sl->master->bus_mutex);
 dev_dbg(&sl->dev, "mutex locked");

next:
 if (w1_reset_select_slave(sl))
  goto out;

 while (retries--) {
  w1_write_8(sl->master, W1_F3A_FUNC_PIO_ACCESS_READ);

  state = w1_read_8(sl->master);
  if ((state & 0x0F) == ((~state >> 4) & 0x0F)) {

   *buf = state;
   bytes_read = 1;
   goto out;
  } else if (state == W1_F3A_INVALID_PIO_STATE) {

   dev_warn(&sl->dev, "slave device did not respond to PIO_ACCESS_READ, " "reselecting, retries left: %d\n", retries);

   goto next;
  }

  if (w1_reset_resume_command(sl->master))
   goto out;

  dev_warn(&sl->dev, "PIO_ACCESS_READ error, retries left: %d\n", retries);
 }

out:
 mutex_unlock(&sl->master->bus_mutex);
 dev_dbg(&sl->dev, "%s, mutex unlocked, retries: %d\n",
  (bytes_read > 0) ? "succeeded" : "error", retries);
 return bytes_read;
}
