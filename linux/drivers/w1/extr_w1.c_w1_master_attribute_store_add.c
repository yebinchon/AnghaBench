
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int name; } ;
struct w1_reg_num {int dummy; } ;
struct w1_master {int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int dev_info (struct device*,char*,int ) ;
 struct w1_master* dev_to_w1_master (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ w1_atoreg_num (struct device*,char const*,size_t,struct w1_reg_num*) ;
 int w1_attach_slave_device (struct w1_master*,struct w1_reg_num*) ;
 struct w1_slave* w1_slave_search_device (struct w1_master*,struct w1_reg_num*) ;

__attribute__((used)) static ssize_t w1_master_attribute_store_add(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct w1_master *md = dev_to_w1_master(dev);
 struct w1_reg_num rn;
 struct w1_slave *sl;
 ssize_t result = count;

 if (w1_atoreg_num(dev, buf, count, &rn))
  return -EINVAL;

 mutex_lock(&md->mutex);
 sl = w1_slave_search_device(md, &rn);




 if (sl) {
  dev_info(dev, "Device %s already exists\n", sl->name);
  result = -EINVAL;
 } else {
  w1_attach_slave_device(md, &rn);
 }
 mutex_unlock(&md->mutex);

 return result;
}
