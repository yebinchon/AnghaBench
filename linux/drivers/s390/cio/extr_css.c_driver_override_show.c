
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {char* driver_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static ssize_t driver_override_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct subchannel *sch = to_subchannel(dev);
 ssize_t len;

 device_lock(dev);
 len = snprintf(buf, PAGE_SIZE, "%s\n", sch->driver_override);
 device_unlock(dev);
 return len;
}
