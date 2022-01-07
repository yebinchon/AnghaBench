
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int rebuild_show (struct device*,struct device_attribute*,char*) ;

__attribute__((used)) static ssize_t consistency_check_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 return rebuild_show(dev, attr, buf);
}
