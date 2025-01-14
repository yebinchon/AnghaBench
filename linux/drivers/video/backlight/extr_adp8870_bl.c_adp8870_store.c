
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct adp8870_bl {int lock; int client; } ;
typedef int ssize_t ;


 int adp8870_write (int ,int,unsigned long) ;
 struct adp8870_bl* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t adp8870_store(struct device *dev, const char *buf,
    size_t count, int reg)
{
 struct adp8870_bl *data = dev_get_drvdata(dev);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 mutex_lock(&data->lock);
 adp8870_write(data->client, reg, val);
 mutex_unlock(&data->lock);

 return count;
}
