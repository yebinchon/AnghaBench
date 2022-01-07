
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {long search_count; int thread; int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct w1_master* dev_to_w1_master (struct device*) ;
 int kstrtol (char const*,int ,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static ssize_t w1_master_attribute_store_search(struct device * dev,
      struct device_attribute *attr,
      const char * buf, size_t count)
{
 long tmp;
 struct w1_master *md = dev_to_w1_master(dev);
 int ret;

 ret = kstrtol(buf, 0, &tmp);
 if (ret)
  return ret;

 mutex_lock(&md->mutex);
 md->search_count = tmp;
 mutex_unlock(&md->mutex);

 if (tmp)
  wake_up_process(md->thread);

 return count;
}
