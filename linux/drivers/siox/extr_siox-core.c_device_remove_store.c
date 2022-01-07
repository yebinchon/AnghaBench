
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int siox_device_remove (struct siox_master*) ;
 struct siox_master* to_siox_master (struct device*) ;

__attribute__((used)) static ssize_t device_remove_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct siox_master *smaster = to_siox_master(dev);


 siox_device_remove(smaster);

 return count;
}
