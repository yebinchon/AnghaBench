
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tle62x0_state {int gpio_state; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct tle62x0_state* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int) ;
 int to_gpio_num (struct device_attribute*) ;

__attribute__((used)) static ssize_t tle62x0_gpio_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct tle62x0_state *st = dev_get_drvdata(dev);
 int gpio_num = to_gpio_num(attr);
 int value;

 mutex_lock(&st->lock);
 value = (st->gpio_state >> gpio_num) & 1;
 mutex_unlock(&st->lock);

 return snprintf(buf, PAGE_SIZE, "%d", value);
}
