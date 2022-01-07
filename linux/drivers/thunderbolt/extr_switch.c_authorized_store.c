
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t kstrtouint (char const*,int ,unsigned int*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 size_t tb_switch_set_authorized (struct tb_switch*,unsigned int) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static ssize_t authorized_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct tb_switch *sw = tb_to_switch(dev);
 unsigned int val;
 ssize_t ret;

 ret = kstrtouint(buf, 0, &val);
 if (ret)
  return ret;
 if (val > 2)
  return -EINVAL;

 pm_runtime_get_sync(&sw->dev);
 ret = tb_switch_set_authorized(sw, val);
 pm_runtime_mark_last_busy(&sw->dev);
 pm_runtime_put_autosuspend(&sw->dev);

 return ret ? ret : count;
}
