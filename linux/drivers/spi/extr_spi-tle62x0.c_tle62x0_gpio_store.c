
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tle62x0_state {int gpio_state; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int dev_dbg (struct device*,char*,int,unsigned long) ;
 struct tle62x0_state* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,char**,int ) ;
 int tle62x0_write (struct tle62x0_state*) ;
 int to_gpio_num (struct device_attribute*) ;

__attribute__((used)) static ssize_t tle62x0_gpio_store(struct device *dev,
  struct device_attribute *attr,
  const char *buf, size_t len)
{
 struct tle62x0_state *st = dev_get_drvdata(dev);
 int gpio_num = to_gpio_num(attr);
 unsigned long val;
 char *endp;

 val = simple_strtoul(buf, &endp, 0);
 if (buf == endp)
  return -EINVAL;

 dev_dbg(dev, "setting gpio %d to %ld\n", gpio_num, val);

 mutex_lock(&st->lock);

 if (val)
  st->gpio_state |= 1 << gpio_num;
 else
  st->gpio_state &= ~(1 << gpio_num);

 tle62x0_write(st);
 mutex_unlock(&st->lock);

 return len;
}
