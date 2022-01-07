
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w1_slave {TYPE_1__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int bus_mutex; } ;


 int DS2438_PAGE_SIZE ;
 int EINVAL ;
 int EIO ;
 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int memcpy (char*,int **,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ w1_ds2438_get_page (struct w1_slave*,int ,int *) ;

__attribute__((used)) static ssize_t page0_read(struct file *filp, struct kobject *kobj,
     struct bin_attribute *bin_attr, char *buf,
     loff_t off, size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);
 int ret;
 u8 w1_buf[DS2438_PAGE_SIZE + 1 ];

 if (off != 0)
  return 0;
 if (!buf)
  return -EINVAL;

 mutex_lock(&sl->master->bus_mutex);


 if (count > DS2438_PAGE_SIZE)
  count = DS2438_PAGE_SIZE;

 if (w1_ds2438_get_page(sl, 0, w1_buf) == 0) {
  memcpy(buf, &w1_buf, count);
  ret = count;
 } else
  ret = -EIO;

 mutex_unlock(&sl->master->bus_mutex);

 return ret;
}
