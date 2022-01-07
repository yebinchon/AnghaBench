
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_slave {int dev_num; int dev; TYPE_1__* bus; } ;
struct TYPE_2__ {int dev; int bus_lock; } ;


 int SDW_SCP_DEVNUMBER ;
 int dev_err (int *,char*,int,...) ;
 int dev_info (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdw_get_device_num (struct sdw_slave*) ;
 int sdw_write (struct sdw_slave*,int ,int) ;

__attribute__((used)) static int sdw_assign_device_num(struct sdw_slave *slave)
{
 int ret, dev_num;


 if (!slave->dev_num) {
  mutex_lock(&slave->bus->bus_lock);
  dev_num = sdw_get_device_num(slave);
  mutex_unlock(&slave->bus->bus_lock);
  if (dev_num < 0) {
   dev_err(slave->bus->dev, "Get dev_num failed: %d\n",
    dev_num);
   return dev_num;
  }
 } else {
  dev_info(slave->bus->dev,
    "Slave already registered dev_num:%d\n",
    slave->dev_num);


  dev_num = slave->dev_num;
  slave->dev_num = 0;
 }

 ret = sdw_write(slave, SDW_SCP_DEVNUMBER, dev_num);
 if (ret < 0) {
  dev_err(&slave->dev, "Program device_num %d failed: %d\n",
   dev_num, ret);
  return ret;
 }


 slave->dev_num = dev_num;

 return 0;
}
