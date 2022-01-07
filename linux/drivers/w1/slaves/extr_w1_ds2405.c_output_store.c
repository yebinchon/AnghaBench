
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct w1_slave {int reg_num; struct w1_master* master; } ;
struct w1_master {int bus_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int dev_addr ;
typedef int cmd ;


 int EINVAL ;
 int ENODEV ;
 int W1_MATCH_ROM ;
 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,unsigned int*,int*) ;
 int w1_ds2405_read_pio (struct w1_slave*) ;
 scalar_t__ w1_reset_bus (struct w1_master*) ;
 int w1_write_block (struct w1_master*,int *,int) ;

__attribute__((used)) static ssize_t output_store(struct device *device,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct w1_slave *sl = dev_to_w1_slave(device);
 struct w1_master *dev = sl->master;

 int ret, current_pio;
 unsigned int val;
 ssize_t f_retval;

 if (count < 1)
  return -EINVAL;

 if (sscanf(buf, " %u%n", &val, &ret) < 1)
  return -EINVAL;

 if (val != 0 && val != 1)
  return -EINVAL;

 f_retval = ret;

 ret = mutex_lock_interruptible(&dev->bus_mutex);
 if (ret)
  return ret;

 current_pio = w1_ds2405_read_pio(sl);
 if (current_pio < 0) {
  f_retval = current_pio;
  goto out_unlock;
 }

 if (current_pio == val)
  goto out_unlock;

 if (w1_reset_bus(dev) != 0) {
  f_retval = -ENODEV;
  goto out_unlock;
 }





 do {
  u64 dev_addr = le64_to_cpu(*(u64 *)&sl->reg_num);
  u8 cmd[9];

  cmd[0] = W1_MATCH_ROM;
  memcpy(&cmd[1], &dev_addr, sizeof(dev_addr));

  w1_write_block(dev, cmd, sizeof(cmd));
 } while (0);

out_unlock:
 w1_reset_bus(dev);
 mutex_unlock(&dev->bus_mutex);

 return f_retval;
}
