
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_dev {int partition; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct switchtec_dev* to_stdev (struct device*) ;

__attribute__((used)) static ssize_t partition_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct switchtec_dev *stdev = to_stdev(dev);

 return sprintf(buf, "%d\n", stdev->partition);
}
