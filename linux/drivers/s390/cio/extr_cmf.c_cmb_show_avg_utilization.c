
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int avg_utilization ;
 unsigned long cmf_read (int ,int ) ;
 int sprintf (char*,char*,unsigned long,unsigned long) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t cmb_show_avg_utilization(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 unsigned long u = cmf_read(to_ccwdev(dev), avg_utilization);

 return sprintf(buf, "%02lu.%01lu%%\n", u / 10, u % 10);
}
