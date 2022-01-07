
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int poll_interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int jiffies_to_nsecs (int ) ;
 int sprintf (char*,char*,int ) ;
 struct siox_master* to_siox_master (struct device*) ;

__attribute__((used)) static ssize_t poll_interval_ns_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct siox_master *smaster = to_siox_master(dev);

 return sprintf(buf, "%lld\n", jiffies_to_nsecs(smaster->poll_interval));
}
