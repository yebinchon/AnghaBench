
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HZ ;
 int PAGE_SIZE ;
 int lb_interval_jiffies ;
 int scnprintf (char*,int ,char*,unsigned long) ;

__attribute__((used)) static ssize_t interval_msec_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 unsigned long msec = lb_interval_jiffies * 1000 / HZ;

 return scnprintf(buf, PAGE_SIZE, "%lu\n", msec);
}
